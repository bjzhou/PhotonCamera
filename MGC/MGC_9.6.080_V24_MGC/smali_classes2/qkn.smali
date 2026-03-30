.class public final Lqkn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field final synthetic a:Landroid/media/MediaCodec;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic d:Landroid/media/MediaCodec$LinearBlock;

.field final synthetic e:I

.field final synthetic f:Lqkp;


# direct methods
.method public constructor <init>(Lqkp;Landroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$LinearBlock;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqkn;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p4, p0, Lqkn;->c:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqkn;->f:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput p6, p0, Lqkn;->e:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p2, p0, Lqkn;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p5, p0, Lqkn;->d:Landroid/media/MediaCodec$LinearBlock;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lqkn;->f:Lqkp;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqkp;->l:Ljava/util/Set;

    nop

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqkn;->f:Lqkp;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqkp;->e:Lsuu;

    nop

    invoke-virtual {v2}, Lsuu;->isDone()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lqkn;->d:Landroid/media/MediaCodec$LinearBlock;

    nop

    if-eqz v0, :cond_1

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec$LinearBlock;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lqkn;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Lqkn;->e:I

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lqkn;->f:Lqkp;

    nop

    nop

    nop

    iget-object v0, v0, Lqkp;->o:Lqkz;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqkn;->c:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    invoke-interface {v0, v2, v3}, Lqkz;->a(J)V

    iget-object v0, p0, Lqkn;->f:Lqkp;

    nop

    nop

    nop

    iget-object p0, p0, Lqkn;->c:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lqkp;->c(Landroid/media/MediaCodec$BufferInfo;)V

    monitor-exit v1

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    const-string v0, "AsynchMediaCodec"

    nop

    const-string v2, "Exception occurred while trying to release output buffer"

    nop

    nop

    nop

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    nop

    return-void

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    iget-object p0, p0, Lqkn;->f:Lqkp;

    nop

    iget-object v2, p0, Lqkp;->j:Lqko;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v2, p0, v0}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_4
    const-string v2, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqkn;->c:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but it has been closed or the codec has been stopped already"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lqkn;->f:Lqkp;

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

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Trying to close output buffer at timestamp "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
