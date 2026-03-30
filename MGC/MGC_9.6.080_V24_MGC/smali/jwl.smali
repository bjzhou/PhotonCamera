.class final Ljwl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field final synthetic f:Ljwm;

.field private final g:Lqep;


# direct methods
.method public constructor <init>(Ljwm;Lqep;J)V
    .locals 6

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p3, p0, Ljwl;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p1, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljwl;->f:Ljwm;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iget-wide v4, p1, Ljwm;->e:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    cmp-long p2, v0, v4

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    goto :goto_11

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
    iput-wide v0, p0, Ljwl;->b:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p2, Lqay;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v0, p0, Ljwl;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p1, Ljwm;->d:J

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    if-gez p2, :cond_0

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

    nop

    nop

    nop

    :goto_f
    add-long/2addr v0, v2

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

    :goto_10
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    const-wide/16 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p2, Lqay;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    :goto_1c
    cmp-long p2, v4, p3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v0, p0, Ljwl;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    iput-wide v0, p0, Ljwl;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p2, p0, Ljwl;->g:Lqep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v0, p0, Ljwl;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    if-ltz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final a(JZ)V
    .locals 9

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Ljwl;->e:Z

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_0
    iput-wide p1, p0, Ljwl;->b:J

    nop

    nop

    nop

    nop

    nop

    iput-boolean p3, p0, Ljwl;->d:Z

    nop

    nop

    iget-wide v1, p0, Ljwl;->c:J

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x1

    nop

    :cond_1
    :goto_5
    add-long/2addr v1, v3

    nop

    nop

    iget-object p3, p0, Ljwl;->f:Ljwm;

    nop

    nop

    iget-wide v5, p3, Ljwm;->e:J

    nop

    nop

    nop

    nop

    cmp-long v5, v1, v5

    nop

    nop

    nop

    nop

    if-gez v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, p3, Ljwm;->d:J

    nop

    nop

    nop

    nop

    cmp-long v5, v1, v5

    nop

    nop

    nop

    nop

    if-gtz v5, :cond_2

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    cmp-long v5, v1, v5

    nop

    nop

    if-ltz v5, :cond_1

    nop

    iget-object p3, p3, Ljwm;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "packet at index "

    nop

    const-string v6, " was likely dropped too early"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v5, v6}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3, v5}, Lpcu;->h(Ljava/lang/String;)V

    goto :goto_5

    nop

    nop

    nop

    :cond_2
    iget-object p3, p3, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    check-cast p3, Lqay;

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p3, Lqay;->b:Ljava/lang/Object;

    nop

    check-cast v5, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    cmp-long v5, p1, v5

    nop

    nop

    nop

    nop

    if-gez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_3
    iget-object v5, p3, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v5, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    iget-wide v7, p0, Ljwl;->a:J

    nop

    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-gez v5, :cond_4

    nop

    nop

    nop

    iput-wide v1, p0, Ljwl;->c:J

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p0, p3, v1, v2}, Ljwl;->c(Lqay;J)V

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_6
    invoke-virtual {p0}, Ljwl;->b()V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljwl;->f:Ljwm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

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
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Ljwl;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    iget-boolean v0, v0, Ljwm;->f:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_9
    cmp-long v0, v0, v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v1, v0, Ljwm;->c:J

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Ljwl;->e:Z

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljwl;->g:Lqep;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lqep;->close()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmp-long v1, v1, v3

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

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v3, p0, Ljwl;->b:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Ljwl;->d:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_10

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ljwl;->f:Ljwm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    iget-wide v0, p0, Ljwl;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final c(Lqay;J)V
    .locals 5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1f

    nop

    nop

    :goto_1
    iget-object p1, p1, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    iget-object v1, p1, Lqay;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljwl;->g:Lqep;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

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

    :goto_9
    const-string v4, "writing packet <"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ljwl;->f:Ljwm;

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

    :goto_c
    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    :goto_f
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const-string v2, ">"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iput-wide p2, p0, Ljwl;->c:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_16
    iget-object v1, v1, Ljwm;->a:Lpcu;

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

    nop

    :goto_17
    invoke-static {v0, p1}, Lqay;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lqay;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1, v0}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p1, Lqay;->b:Ljava/lang/Object;

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

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    check-cast v1, Ljava/nio/ByteBuffer;

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

    :goto_22
    iget-object v0, p1, Lqay;->a:Ljava/lang/Object;

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

    :goto_23
    iget-boolean v0, p0, Ljwl;->e:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, v1, p1}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
