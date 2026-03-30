.class public final Ljwm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqep;


# instance fields
.field public final a:Lpcu;

.field public final b:Ljava/util/HashMap;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field private final g:Lsuu;

.field private final h:Ljava/util/List;

.field private i:J


# direct methods
.method public constructor <init>(Lpcu;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "CCTrack"

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    const-wide/16 v2, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-wide v2, p0, Ljwm;->d:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iput-object p1, p0, Ljwm;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Ljwm;->f:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p2}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Ljwm;->c:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iput-wide v0, p0, Ljwm;->i:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xa

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljwm;->g:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x2

    nop

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

    nop

    :goto_19
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

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

    :goto_1a
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iput-wide v0, p0, Ljwm;->e:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    new-instance v0, Lsuu;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Ljwm;->h:Ljava/util/List;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsui;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsuu;->f(Lsui;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljwm;->g:Lsuu;

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

    :goto_2
    return-void

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_e

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->DGHJqlFchMdwtdO:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p1, Lqay;->b:Ljava/lang/Object;

    nop

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    iput-wide v0, p0, Ljwm;->c:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Ljwm;->e:J

    nop

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v2, v0

    nop

    nop

    nop

    iput-wide v2, p0, Ljwm;->e:J

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljwm;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljwl;

    nop

    nop

    nop

    nop

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, v3, Ljwl;->a:J

    nop

    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-ltz v4, :cond_0

    nop

    nop

    nop

    nop

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    iget-wide v6, v3, Ljwl;->b:J

    nop

    nop

    nop

    nop

    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    if-gtz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1, v0, v1}, Ljwl;->c(Lqay;J)V

    :cond_0
    invoke-virtual {v3}, Ljwl;->b()V

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

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

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    iget-object v1, p0, Ljwm;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Lqay;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lqay;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const-string v0, ">"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    invoke-interface {v1, v0}, Lpcu;->g(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljwm;->g:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, p0, Ljwm;->g:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isCancelled()Z

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

    nop

    const-string v0, "CANCELLED"

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljwm;->g:Lsuu;

    nop

    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Landroid/media/MediaFormat;

    nop

    nop

    nop

    const-string v1, "mime"

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const-string v0, "WAITING"

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Ljwm;->a:Lpcu;

    nop

    nop

    nop

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    iget-object v3, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    iget-object v4, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    const-string v4, "n/a"

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v4, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    iget-wide v5, p0, Ljwm;->d:J

    nop

    nop

    nop

    const-wide/16 v7, 0x1

    nop

    nop

    add-long/2addr v5, v7

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    const-string v5, "n/a"

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v5, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Ljwm;->e:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, -0x1

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    :goto_3
    iget-wide v6, p0, Ljwm;->c:J

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    const-string v3, "mime %s, %d entries, span: <%s> - <%s> available to %d"

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljwm;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljwl;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljwm;->a:Lpcu;

    nop

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    iget-wide v4, v1, Ljwl;->c:J

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    iget-wide v5, v1, Ljwl;->b:J

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    iget-boolean v6, v1, Ljwl;->e:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v7, v6, :cond_4

    nop

    nop

    nop

    const-string v6, "NO"

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_4
    const-string v6, "YES"

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, v1, Ljwl;->d:Z

    nop

    if-eq v7, v1, :cond_5

    nop

    nop

    const-string v1, "NO"

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_5
    const-string v1, "YES"

    nop

    :goto_6
    filled-new-array {v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v4, "   tr: wrote to index <%d>  can write <%d>  closed %s  willclose %s"

    nop

    nop

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Ljwm;->f:Z

    nop

    iget-object v0, p0, Ljwm;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljwl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljwl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(J)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :goto_9
    :try_start_0
    iget-wide v0, p0, Ljwm;->d:J

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    nop

    add-long/2addr v0, v2

    nop

    nop

    iget-wide v4, p0, Ljwm;->e:J

    nop

    cmp-long v4, v0, v4

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    goto :goto_a

    nop

    :cond_1
    iget-object v4, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqay;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    cmp-long v4, v4, p1

    nop

    if-gtz v4, :cond_2

    nop

    nop

    iget-object v4, p0, Ljwm;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Ljwm;->i:J

    nop

    nop

    iget-wide v0, p0, Ljwm;->d:J

    nop

    add-long/2addr v0, v2

    nop

    nop

    nop

    iput-wide v0, p0, Ljwm;->d:J

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    :goto_a
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Ljwm;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :cond_3
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljwl;

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Ljwl;->e:Z

    nop

    if-eqz v1, :cond_3

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    nop

    nop

    :cond_4
    iget-object p2, p0, Ljwm;->h:Ljava/util/List;

    nop

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v0, 0x8

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

    nop

    :goto_d
    return-void

    nop

    nop

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop
.end method

.method public final declared-synchronized e(Lqep;J)Ljwl;
    .locals 2

    goto/32 :goto_6

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Ljwm;->i:J

    nop

    cmp-long v0, p2, v0

    nop

    if-ltz v0, :cond_1

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "Requesting packets that were dropped already"

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v0, Ljwl;

    nop

    nop

    invoke-direct {v0, p0, p1, p2, p3}, Ljwl;-><init>(Ljwm;Lqep;J)V

    iget-object p2, p0, Ljwm;->g:Lsuu;

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lqep;->a(Lsui;)V

    iget-object p1, p0, Ljwm;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop
.end method
