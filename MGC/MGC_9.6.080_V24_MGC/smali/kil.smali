.class final Lkil;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpgi;

.field final synthetic b:Lpge;

.field final synthetic c:Lkjb;

.field final synthetic d:J

.field final synthetic e:Lkim;


# direct methods
.method public constructor <init>(Lkim;Lpgi;Lpge;Lkjb;J)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    iput-object p3, p0, Lkil;->b:Lpge;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-wide p5, p0, Lkil;->d:J

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

    :goto_3
    iput-object p1, p0, Lkil;->e:Lkim;

    nop

    nop

    goto/32 :goto_0

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
    iput-object p4, p0, Lkil;->c:Lkjb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lkil;->a:Lpgi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cJ()V
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lkil;->a:Lpgi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lscz;

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

    :goto_4
    iget-object v2, p0, Lkil;->b:Lpge;

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0xb95

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const-string v3, "Reprocessing aborted. input=%s output=%s"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkil;->b:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lkjb;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lkim;->a:Lsdb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lkil;->c:Lkjb;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lpge;->close()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v3, v1, v2}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop
.end method

.method public final cU()Ljava/util/concurrent/Executor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkil;->e:Lkim;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkim;->e:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final cV()V
    .locals 20

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    move-object v3, v0

    nop

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

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

    :goto_3
    iget-object v4, v1, Lkil;->e:Lkim;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Image denoising failed. input="

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iget-object v1, v1, Lkil;->e:Lkim;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    move-object v2, v0

    nop

    :try_start_1
    invoke-interface {v4}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lkim;->d:Lpdf;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_10

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, "Reprocessed image is null. input="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    goto/32 :goto_1b

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

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_e
    const-string v5, "ReprocessingMoments#onComplete"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    iget-object v2, v1, Lkil;->a:Lpgi;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    iget-object v5, v1, Lkil;->b:Lpge;

    nop

    nop

    nop

    invoke-interface {v5}, Lpge;->b()Lpgi;

    move-result-object v5

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkim;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const/16 v3, 0xb9a

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lscz;->q()V

    iget-object v2, v1, Lkil;->c:Lkjb;

    nop

    nop

    invoke-interface {v2, v0}, Lkjb;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_10
    :try_start_3
    invoke-interface {v4}, Lpge;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_4
    iget-object v4, v1, Lkil;->b:Lpge;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, v1, Lkil;->e:Lkim;

    nop

    nop

    nop

    iget-object v5, v5, Lkim;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2

    nop

    :catchall_1
    move-exception v0

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    iget-object v0, v0, Lkim;->d:Lpdf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v6, " output="

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_a

    nop

    nop

    :goto_19
    :try_start_6
    iget-object v3, v1, Lkil;->b:Lpge;

    nop

    iget-object v5, v1, Lkil;->e:Lkim;

    nop

    nop

    nop

    iget-object v5, v5, Lkim;->b:Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lphh;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5}, Lpge;->e(Lphh;)Lprw;

    move-result-object v3

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    iget-object v3, v1, Lkil;->a:Lpgi;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    iget-object v5, v1, Lkil;->b:Lpge;

    nop

    nop

    nop

    invoke-interface {v5}, Lpge;->b()Lpgi;

    move-result-object v5

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkim;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const/16 v3, 0xb99

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lscz;->q()V

    iget-object v2, v1, Lkil;->c:Lkjb;

    nop

    invoke-interface {v2, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    nop

    sget-object v2, Lkim;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v5, 0xb96

    nop

    nop

    invoke-interface {v2, v5}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v5, "Reprocessing complete from HAL, input=%s output=%s. latency %s ms"

    nop

    nop

    iget-object v9, v1, Lkil;->a:Lpgi;

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lkil;->b:Lpge;

    nop

    invoke-interface {v10}, Lpge;->b()Lpgi;

    move-result-object v10

    nop

    iget-wide v11, v1, Lkil;->d:J

    nop

    sub-long/2addr v7, v11

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    invoke-interface {v2, v5, v9, v10, v7}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lkil;->e:Lkim;

    nop

    nop

    iget-boolean v2, v2, Lkim;->c:Z

    nop

    const/4 v5, 0x1

    nop

    const/4 v7, 0x0

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprw;->g()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lprv;

    nop

    invoke-interface {v3}, Lprw;->g()Ljava/util/List;

    move-result-object v7

    nop

    nop

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprw;->g()Ljava/util/List;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprw;->c()I

    move-result v9

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprw;->b()I

    move-result v10

    nop

    nop

    nop

    invoke-interface {v2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    invoke-interface {v2}, Lprv;->getPixelStride()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprv;->getRowStride()I

    move-result v13

    nop

    nop

    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    nop

    invoke-interface {v7}, Lprv;->getPixelStride()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v16

    nop

    invoke-interface {v8}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    nop

    invoke-interface {v8}, Lprv;->getPixelStride()I

    move-result v18

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lprv;->getRowStride()I

    move-result v19

    nop

    nop

    nop

    invoke-static/range {v9 .. v19}, Lcom/google/android/apps/camera/jni/denoise/DenoiseNative;->denoiseImage(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z

    move-result v7

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    iget-object v3, v1, Lkil;->a:Lpgi;

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    iget-object v5, v1, Lkil;->b:Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpge;->b()Lpgi;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lkim;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v3, 0xb98

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    invoke-interface {v0}, Lscz;->q()V

    iget-object v0, v1, Lkil;->c:Lkjb;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, v1, Lkil;->b:Lpge;

    nop

    invoke-interface {v0}, Lpge;->b()Lpgi;

    :cond_4
    iget-object v0, v1, Lkil;->c:Lkjb;

    nop

    nop

    invoke-interface {v0, v3, v5, v7}, Lkjb;->d(Lprw;ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    throw v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "Reprocessing Stream is absent. input="

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v4, v4, Lkim;->d:Lpdf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v1, Lkil;->e:Lkim;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method
