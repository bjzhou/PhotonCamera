.class public Liwl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/media/MediaMuxer;

.field private final c:I

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-string v0, "iwl"

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

    :goto_3
    sput-object v0, Liwl;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

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

    :goto_3
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p2, "MediaMuxer creation failed"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Liwl;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    iput-object v0, p0, Liwl;->d:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Liwl;->c:I

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance p2, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/media/MediaFormat;)I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Liwl;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    sget-object p1, Liwl;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0x7bd

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    iget v0, p0, Liwl;->e:I

    nop

    const-string v1, "addTrack called after muxer was started with %d tracks"

    nop

    nop

    nop

    invoke-interface {p1, v1, v0}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v0, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    nop

    nop

    nop

    nop

    iget v0, p0, Liwl;->e:I

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    iput v0, p0, Liwl;->e:I

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Liwl;->c:I

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iget-object v0, p0, Liwl;->d:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v0, 0x16

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

    :goto_9
    const v1, 0x1a

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

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
    goto/32 :goto_0

    nop

    nop

    :goto_e
    return p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized b()V
    .locals 5

    goto/32 :goto_13

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

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    sget-object v1, Liwl;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "%s"

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x7be

    nop

    invoke-static {v2, v3, v4, v1, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

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

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto :goto_8

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :try_start_1
    sget-object v1, Liwl;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    const-string v2, "%s"

    nop

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    const/16 v4, 0x7bf

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v1, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    :try_start_2
    iget-object v0, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :cond_2
    :try_start_3
    iget v0, p0, Liwl;->e:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    iput v0, p0, Liwl;->e:I

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    :try_start_4
    iget v0, p0, Liwl;->e:I

    nop

    nop

    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    sget-object v0, Liwl;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x7c1

    nop

    nop

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

    const-string v1, "stopTrack called but no tracks were added!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    :try_start_5
    iget-object v0, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_6
    invoke-virtual {p0}, Liwl;->d()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Liwl;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0x7c0

    nop

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

    const-string v1, "stopTrack called but the muxer is not started!"

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
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

    :try_start_7
    monitor-exit p0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Liwl;->d:Ljava/util/concurrent/CountDownLatch;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Liwl;->b:Landroid/media/MediaMuxer;

    nop

    nop

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p3, 0x7c2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x7c3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

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

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

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

    :goto_5
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    sget-object p1, Liwl;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p2, p3, p1, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :catch_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "writeSampleData called but muxer was not started!"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Liwl;->a:Lsdb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    const-string v0, "%s"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long p0, v0, v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Liwl;->d:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
