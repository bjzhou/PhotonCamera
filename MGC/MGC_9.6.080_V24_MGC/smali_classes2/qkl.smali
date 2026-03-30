.class public final Lqkl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqkr;


# instance fields
.field public a:J

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field final synthetic c:I

.field final synthetic d:Lqkp;


# direct methods
.method public constructor <init>(Lqkp;Ljava/nio/ByteBuffer;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqkl;->d:Lqkp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqkl;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lqkl;->a:J

    nop

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

    :goto_4
    iput p3, p0, Lqkl;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lqkl;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqkl;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v1, p0, Lqkl;->d:Lqkp;

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lqkl;->d:Lqkp;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqkp;->k:Ljava/util/Set;

    nop

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqkl;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lqkl;->d:Lqkp;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    iget v3, p0, Lqkl;->c:I

    nop

    nop

    iget-wide v6, p0, Lqkl;->a:J

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const-string v0, "Trying to submit input buffer for timestamp "

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_2
    const-string v0, "AsynchMediaCodec"

    nop

    const-string v2, "Exception caught while attempting to queue input buffer."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    nop

    :catch_0
    move-exception v0

    nop

    iget-object p0, p0, Lqkl;->d:Lqkp;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqkp;->j:Lqko;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqkp;->a:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0, v0}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto :goto_e

    nop

    :cond_1
    const-string v2, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lqkl;->a:J

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but it has been closed already (... or the codec was stopped)"

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
