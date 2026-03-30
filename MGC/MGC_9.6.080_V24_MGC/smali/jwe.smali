.class final Ljwe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqep;


# instance fields
.field private final a:Lqep;

.field private final b:Lsuu;


# direct methods
.method public constructor <init>(Lqep;Lsuu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljwe;->a:Lqep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljwe;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsui;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljwe;->a:Lqep;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lqep;->a(Lsui;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_7

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljwe;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :catch_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljwe;->a:Lqep;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, p2}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 p1, p1, 0x1

    nop

    if-eqz p1, :cond_0

    nop

    iget-object p1, p0, Ljwe;->b:Lsuu;

    nop

    nop

    nop

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    invoke-virtual {p1, p2}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ljwe;->b:Lsuu;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final close()V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljwe;->a:Lqep;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lqep;->close()V

    iget-object v1, p0, Ljwe;->b:Lsuu;

    nop

    nop

    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Ljwe;->b:Lsuu;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    aput-object v2, v3, v5

    nop

    const/16 v5, 0xa9

    nop

    nop

    nop

    invoke-static {v5, v1, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_4

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

    nop

    :catchall_0
    move-exception v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_9
    iget-object p0, p0, Ljwe;->b:Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x17

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljwe;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    throw v1

    nop

    :catch_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
