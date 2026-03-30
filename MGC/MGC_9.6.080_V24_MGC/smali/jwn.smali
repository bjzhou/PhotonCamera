.class public Ljwn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljww;


# static fields
.field private static final b:Lsdb;

.field private static final c:[F


# instance fields
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;

.field private final d:Landroid/media/MediaFormat;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Landroid/util/SparseArray;

.field private g:Lqht;

.field private h:Lqku;

.field private i:Lqau;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_1
    add-int v0, v0, v1

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

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

    :goto_9
    const-string p0, "request-sync"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4, p1}, Landroid/media/MediaCodec$QueueRequest;->setFlags(I)Landroid/media/MediaCodec$QueueRequest;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

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

    :goto_e
    invoke-virtual {p4, p3}, Landroid/media/MediaCodec$QueueRequest;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljwn;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p4, p1, p2}, Landroid/media/MediaCodec$QueueRequest;->setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p4, p0, p2}, Landroid/media/MediaCodec$QueueRequest;->setIntegerParameter(Ljava/lang/String;I)Landroid/media/MediaCodec$QueueRequest;

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljwn;->b:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jwn"

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    nop

    nop

    :goto_4
    sput-object v0, Ljwn;->c:[F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x10

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ljwn;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x10

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

    :goto_b
    const p1, 0x7f420888

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    iput-object v0, p0, Ljwn;->d:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iput-object v0, p0, Ljwn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_14
    const-string p0, "color-format"

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

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Ljwn;->f:Landroid/util/SparseArray;

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

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x23

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Lsui;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    return-object v0

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    :goto_a
    :try_start_1
    iget-object v1, p0, Ljwn;->f:Landroid/util/SparseArray;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    nop

    if-ge v0, v1, :cond_1

    nop

    iget-object v1, p0, Ljwn;->f:Landroid/util/SparseArray;

    nop

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqkf;

    nop

    nop

    nop

    invoke-virtual {v1}, Lqkf;->close()V

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    iget-object v0, p0, Ljwn;->f:Landroid/util/SparseArray;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Ljwn;->h:Lqku;

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-virtual {v0}, Lqku;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_2
    sget-object v0, Lsue;->a:Lsui;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lqep;Lqht;Lqkz;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    return-void

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

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

    :cond_0
    :try_start_1
    sget-object p1, Ljwn;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/16 p2, 0xac8

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string p2, "Direct Motion Encoder is null."

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_2
    iput-object p2, p0, Ljwn;->g:Lqht;

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Ljxb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p1}, Ljxb;-><init>(Lqep;)V

    new-instance p1, Lqku;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Lqku;-><init>(Lqlb;)V

    iput-object p1, p0, Ljwn;->h:Lqku;

    nop

    nop

    iget-object p2, p0, Ljwn;->d:Landroid/media/MediaFormat;

    nop

    invoke-virtual {p1, p2}, Lqku;->c(Landroid/media/MediaFormat;)Lqkv;

    move-result-object p1

    nop

    iput-object p4, p1, Lqkv;->c:Landroid/os/Handler;

    nop

    nop

    const/4 p2, 0x1

    nop

    nop

    nop

    iput-boolean p2, p1, Lqkv;->f:Z

    nop

    nop

    nop

    new-instance p4, Ljxl;

    nop

    nop

    nop

    nop

    invoke-direct {p4, p0, p3, p2}, Ljxl;-><init>(Ljwn;Lqkz;I)V

    invoke-virtual {p1, p4}, Lqkv;->a(Lqkz;)V

    invoke-virtual {p1}, Lqkv;->b()Lqau;

    move-result-object p1

    nop

    nop

    nop

    iput-object p1, p0, Ljwn;->i:Lqau;

    nop

    nop

    nop

    iget-object p1, p0, Ljwn;->h:Lqku;

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    invoke-virtual {p1}, Lqku;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Z
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

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljwn;->i:Lqau;

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

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()[F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    sget-object p0, Ljwn;->c:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(Lprw;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    invoke-interface {v1}, Lqkr;->b()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/media/MediaCodec$QueueRequest;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2, v3, v0, p1}, Ljwn;->19e596a3e324281407eb5c11093c0152m(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Lqkr;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_6
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v1}, Lqkr;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_d
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_5

    nop

    nop

    invoke-interface {v1}, Lqkr;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_8
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v1, p0, Ljwn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x1388

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqkr;

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized g(Lprw;Ljwv;)V
    .locals 12

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljwn;->g:Lqht;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_19

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    :try_start_2
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :goto_9
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lqia;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1f

    nop

    :catchall_4
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0}, Lqia;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    :try_start_6
    invoke-interface {v3}, Lqkr;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    :goto_13
    :try_start_7
    invoke-static {v0, v2}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_9

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception p1

    nop

    nop

    nop

    :try_start_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    :goto_18
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

    :goto_19
    if-nez v1, :cond_2

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

    :cond_2
    :try_start_9
    new-instance v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    invoke-direct {v2, v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    iget-object v3, p0, Ljwn;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x1388

    nop

    nop

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqkr;

    nop

    nop
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1c

    nop

    :catchall_7
    move-exception p2

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p1

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    :try_start_d
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_e
    invoke-interface {v3}, Lqkr;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->c()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->b()I

    move-result v6

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljwn;->f:Landroid/util/SparseArray;

    nop

    nop

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lqkf;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, p0, Ljwn;->g:Lqht;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_4

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    const-wide/32 v9, 0x10200

    nop

    nop

    const/16 v7, 0x23

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v5 .. v10}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v5

    nop

    nop

    nop

    new-instance v6, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    invoke-direct {v6, v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-static {v11, v6}, Lqjs;->j(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqjs;

    move-result-object v7

    nop

    nop

    new-instance v8, Lqkf;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v7, v6, v5}, Lqkf;-><init>(Lqjs;Lcom/google/android/libraries/oliveoil/gl/EGLImage;Landroid/hardware/HardwareBuffer;)V

    iget-object v5, p0, Ljwn;->f:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v7, v8

    nop

    nop

    :cond_4
    iget-object v4, v7, Lqkf;->b:Lqjs;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0, v4}, Ljwv;->a(Lqiu;Lqjs;)V

    iget-object p2, v0, Lqia;->b:Lqht;

    nop

    nop

    invoke-static {p2}, Lqoe;->C(Lqht;)V

    invoke-interface {p1}, Lprw;->d()J

    move-result-wide p1

    nop

    nop

    nop

    iget-object v4, v7, Lqkf;->a:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    invoke-interface {v3}, Lqkr;->b()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Landroid/media/MediaCodec$QueueRequest;

    nop

    invoke-direct {p0, p1, p2, v4, v5}, Ljwn;->19e596a3e324281407eb5c11093c0152m(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-virtual {v0}, Lqia;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-interface {v3}, Lqkr;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_23
    :try_start_11
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
