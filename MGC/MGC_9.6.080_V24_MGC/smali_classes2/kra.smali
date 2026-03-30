.class final Lkra;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lkrb;

.field private final b:Llqw;

.field private final c:Lsuu;


# direct methods
.method public constructor <init>(Lkrb;Llqw;Lsuu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lkra;->b:Llqw;

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

    :goto_3
    iput-object p1, p0, Lkra;->a:Lkrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lkra;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 17

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lsuu;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    iget-object v0, v1, Lkra;->c:Lsuu;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget-object v1, v1, Lkra;->c:Lsuu;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Lsuu;->isCancelled()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_6
    invoke-virtual {v1, v3}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Lsuu;->isDone()Z

    move-result v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, v1, Lkra;->c:Lsuu;

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

    :goto_b
    iget-object v3, v1, Lkra;->c:Lsuu;

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

    :goto_c
    const-string v8, " bytes"

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    goto :goto_14

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    iget-object v3, v1, Lkra;->c:Lsuu;

    nop

    nop

    invoke-virtual {v3, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto :goto_e

    nop

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Error compressing jpeg: num bytes written was "

    nop

    nop

    nop

    nop

    invoke-static {v10, v3}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    invoke-static {v5, v9, v8}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_12
    :try_start_2
    invoke-virtual {v6}, Llrl;->close()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    iget-object v0, v1, Lkra;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    new-instance v3, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v2, "Unknown error while encoding imageToProcess"

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, v1, Lkra;->a:Lkrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lkra;->b:Llqw;

    nop

    nop

    iget-object v4, v0, Lkrb;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v5, "allocateAndCompressJpeg"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v3, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    iget-object v5, v3, Llqw;->d:Landroid/graphics/Rect;

    nop

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    nop

    mul-int/lit8 v4, v4, 0x3

    nop

    nop

    nop

    nop

    mul-int/2addr v4, v5

    nop

    nop

    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    div-int/lit8 v5, v4, 0x2

    nop

    nop

    nop

    iget-object v6, v0, Lkrb;->b:Llrk;

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Llrk;->c(Ljava/lang/Object;)Llrl;

    move-result-object v6

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Llrl;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v9, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->MVFtWlnmp:Ljava/lang/String;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v1, Lkra;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    const v0, 0x2

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

    :goto_21
    goto/32 :goto_17

    nop

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_2a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v7, :cond_6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_5
    iget-object v10, v0, Lkrb;->c:Lluf;

    nop

    nop

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v10, v3, v11}, Lluf;->b(Llqw;Ljava/nio/ByteBuffer;)I

    move-result v10

    nop

    nop

    nop

    nop

    if-le v10, v5, :cond_8

    nop

    nop

    invoke-virtual {v6}, Llrl;->close()V

    iget-object v5, v0, Lkrb;->b:Llrk;

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    invoke-interface {v5, v7}, Llrk;->c(Ljava/lang/Object;)Llrl;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Llrl;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    move-object v7, v5

    nop

    nop

    check-cast v7, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_7

    nop

    nop

    iget-object v4, v0, Lkrb;->c:Lluf;

    nop

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    nop

    invoke-interface {v4, v3, v5}, Lluf;->b(Llqw;Ljava/nio/ByteBuffer;)I

    move-result v10

    nop

    nop

    goto :goto_2c

    nop

    nop

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    invoke-static {v4, v9, v8}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

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

    goto/16 :goto_12

    nop

    :cond_8
    :goto_2c
    if-lez v10, :cond_1

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v13, v10, [B

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lkrb;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v6}, Llrl;->close()V

    invoke-static {}, Lpfv;->b()Lpfv;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lkra;->b:Llqw;

    nop

    iget-object v3, v3, Llqw;->c:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lpro;

    nop

    nop

    nop

    iget-object v4, v1, Lkra;->b:Llqw;

    nop

    iget-object v4, v4, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lpck;->f(Landroid/graphics/Rect;)Lpck;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lkra;->a:Lkrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkrb;->c:Lluf;

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lkra;->b:Llqw;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lluf;->a(Llqw;)Lpcg;

    move-result-object v4

    nop

    nop

    iget v5, v14, Lpck;->a:I

    nop

    nop

    iget v6, v14, Lpck;->b:I

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v6, v4, v3}, Lpfv;->f(IILpcg;Lrss;)V

    iget-object v3, v1, Lkra;->b:Llqw;

    nop

    nop

    nop

    iget-wide v3, v3, Llqw;->j:J

    nop

    invoke-virtual {v0, v3, v4}, Lpfv;->g(J)V

    iget-object v3, v1, Lkra;->c:Lsuu;

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lkra;->b:Llqw;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llqw;->a:Lprw;

    nop

    invoke-interface {v4}, Lprw;->d()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    iget-object v15, v0, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lkra;->a:Lkrb;

    nop

    iget-object v0, v0, Lkrb;->e:Lpic;

    nop

    nop

    move-object/from16 v16, v0

    nop

    nop

    nop

    invoke-static/range {v11 .. v16}, Lqqd;->a(J[BLpck;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpic;)Lqqd;

    move-result-object v0

    nop

    invoke-virtual {v3, v0}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v9, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method
