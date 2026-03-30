.class final Liwj;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Liwk;


# direct methods
.method public constructor <init>(Liwk;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    const-string p1, "EncoderDrainerDrainThread"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Liwj;->a:Liwk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_0
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v4, v5, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    :goto_3
    sget-object v2, Liwk;->a:Lsdb;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4
    and-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v3, v0, Liwk;->l:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2e

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iput v7, v0, Liwk;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "encoderOutputBuffer %s was null"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_13
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v5, -0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    new-array v7, v7, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_18
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    and-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    iget-boolean v3, v0, Liwk;->g:Z

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v3, :cond_4

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v4, v5, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    aget-object v5, v2, v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Liwk;->a:Lsdb;

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_23
    sget-object v0, Liwk;->a:Lsdb;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Liwj;->a:Liwk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

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

    nop

    :goto_28
    invoke-virtual {v1, v4, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4, v3}, Liwl;->a(Landroid/media/MediaFormat;)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_2e

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_34

    nop

    nop

    :goto_31
    iget-boolean v1, v0, Liwk;->g:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, v0, Liwk;->c:Liwl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    :goto_34
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-boolean v6, v0, Liwk;->g:Z

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_36
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v7, v0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v3, v0, Liwk;->f:I

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

    :goto_3a
    iget-boolean v3, v0, Liwk;->i:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x1f

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3, v4, v2, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3e
    const-wide/32 v4, 0x3d090

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

    nop

    :goto_3f
    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_44
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-gez v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

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

    :goto_48
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v5, -0x3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4a
    iget v7, v0, Liwk;->l:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4b
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-boolean v6, v0, Liwk;->g:Z

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4d
    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4b

    nop

    nop

    :goto_50
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_51
    if-eq v4, v5, :cond_b

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    :goto_53
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v1, v4}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v7, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_c
    goto/32 :goto_4d

    nop

    nop

    :goto_57
    sget-object v3, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->nmoQwuUsuLu:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_58
    const-string v1, "MediaCodec timed out."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_59
    iget-object v1, v0, Liwk;->b:Liwh;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/16 v1, 0x7af

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v1}, Liwh;->a()Landroid/media/MediaCodec;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    monitor-enter v7

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v9, v0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    nop

    new-instance v10, Lmhz;

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v5, v3, v11}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    invoke-interface {v9, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v5, v0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    nop

    nop

    goto/16 :goto_15

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_60
    const/16 v1, 0x7b0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v4, 0x7b1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

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
