.class final Ljxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqep;


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lqep;

.field final synthetic c:Ljxf;


# direct methods
.method public constructor <init>(Ljxf;Lsuu;Lqep;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljxd;->a:Lsuu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljxd;->c:Ljxf;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Ljxd;->b:Lqep;

    nop

    nop

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method public final a(Lsui;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lqep;->a(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljxd;->b:Lqep;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljxd;->a:Lsuu;

    nop

    goto/32 :goto_4

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

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lsuu;->f(Lsui;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    check-cast p0, Lscz;

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
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p1

    nop

    :try_start_0
    iget-object v0, p0, Ljxd;->c:Ljxf;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljxf;->b:Ljxe;

    nop

    nop

    nop

    nop

    nop

    iget v1, v0, Ljxe;->b:I

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    const-wide v1, 0x7fffffffffffffffL

    nop

    nop

    iput-wide v1, v0, Ljxe;->c:J

    nop

    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljxd;->c:Ljxf;

    nop

    nop

    iget-object v0, v0, Ljxf;->b:Ljxe;

    nop

    iget v1, v0, Ljxe;->a:I

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iput v1, v0, Ljxe;->a:I

    nop

    nop

    :cond_1
    iget-object v0, p0, Ljxd;->c:Ljxf;

    nop

    nop

    iget-object v0, v0, Ljxf;->b:Ljxe;

    nop

    nop

    iget v1, v0, Ljxe;->b:I

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iput v1, v0, Ljxe;->b:I

    nop

    nop

    nop

    nop

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ljxd;->c:Ljxf;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ljxf;->b:Ljxe;

    nop

    nop

    nop

    nop

    iget-wide v3, v3, Ljxe;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    iput-wide v1, v0, Ljxe;->c:J

    nop

    nop

    nop

    iget-object v0, p0, Ljxd;->c:Ljxf;

    nop

    nop

    nop

    iget-object v0, v0, Ljxf;->b:Ljxe;

    nop

    nop

    nop

    nop

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ljxd;->c:Ljxf;

    nop

    nop

    iget-object p0, p0, Ljxf;->b:Ljxe;

    nop

    nop

    iget-wide v3, p0, Ljxe;->d:J

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    iput-wide v1, v0, Ljxe;->d:J

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_1
    iget-object p1, p0, Ljxd;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Landroid/media/MediaFormat;

    nop
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    :goto_8
    const-string p1, "Configured format not yet available for packet; stats might be inaccurate"

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljxd;->b:Lqep;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    new-instance p1, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lsuu;->isCancelled()Z

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljxd;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p1, p2}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Ljxf;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    const/16 p1, 0xadc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lpuq;->ad(Ljava/lang/String;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Ljxf;->b:Ljxe;

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

    :goto_17
    const-string v0, "mime"

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    invoke-static {}, Lkav;->b()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_22
    if-lez v0, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    :goto_23
    const-string p2, "... we just checked for isDone."

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Ljxd;->c:Ljxf;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Ljxd;->a:Lsuu;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Ljxd;->b:Lqep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lqep;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
