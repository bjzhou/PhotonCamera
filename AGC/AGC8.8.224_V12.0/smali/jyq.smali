.class public final Ljyq;
.super Ljava/lang/Object;

# interfaces
.implements Ljxw;


# static fields
.field private static final d:Ljava/lang/Long;


# instance fields
.field public final a:D

.field public final b:Ljava/util/Queue;

.field public c:Lmqp;

.field private final e:Ljxx;

.field private final f:Ljym;

.field private final g:Lnow;

.field private final h:Ljwb;

.field private final i:Ljxa;

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;

.field private final k:Ljava/util/Queue;

.field private l:Lkad;

.field private final m:Ljava/util/Deque;

.field private n:J

.field private final o:Ljava/lang/Object;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ljyq;->d:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljxx;Ljym;Ljwb;Ljxa;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljyq;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ljyq;->k:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljyq;->m:Ljava/util/Deque;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ljyq;->c:Lmqp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    iput-object p1, p0, Ljyq;->e:Ljxx;

    iput-object p2, p0, Ljyq;->f:Ljym;

    iput-object p3, p0, Ljyq;->h:Ljwb;

    invoke-virtual {p4}, Ljxa;->a()I

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p4}, Ljxa;->c()I

    move-result p3

    int-to-double v0, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    iput-wide p1, p0, Ljyq;->a:D

    iput-object p4, p0, Ljyq;->i:Ljxa;

    const-string p1, "MEncOutput"

    invoke-static {p1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object p1

    iput-object p1, p0, Ljyq;->g:Lnow;

    const/4 p1, 0x1

    iput p1, p0, Ljyq;->p:I

    return-void
.end method

.method private final e(J)J
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Ljyq;->a:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public final a(JI)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Ljyq;->k:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    const-string v6, "MetaEncoder"

    if-nez v5, :cond_13

    iget-object v5, v0, Ljyq;->k:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljyp;

    iget-wide v7, v5, Ljyp;->a:J

    sget-object v5, Ljyq;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    const-wide/16 v9, -0xfa0

    add-long/2addr v7, v9

    cmp-long v9, v7, v1

    if-gtz v9, :cond_13

    iget-object v7, v0, Ljyq;->k:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljyp;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v7, v7, Ljyp;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v9

    const-string v7, "Multiple metadata (%d) found for video frame (%d)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, p3

    goto :goto_0

    :cond_0
    iget-wide v10, v7, Ljyp;->a:J

    iget-wide v12, v0, Ljyq;->a:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v12, v14

    if-lez v16, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    const-wide/16 v12, 0x1f40

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    const-wide/16 v12, 0xfa0

    :goto_1
    sub-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v5, v10, v12

    if-gtz v5, :cond_12

    iget-object v4, v7, Ljyp;->b:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v6, v5, [[B

    check-cast v4, Llqh;

    iget-object v10, v4, Llqh;->e:Ljava/lang/Object;

    const/16 v11, 0x100

    if-nez v10, :cond_2

    new-array v10, v3, [B

    goto :goto_4

    :cond_2
    iget-boolean v12, v4, Llqh;->a:Z

    if-nez v12, :cond_4

    check-cast v10, [B

    array-length v10, v10

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    const-string v12, "AF data too large."

    invoke-static {v10, v12}, Lmoz;->q(ZLjava/lang/Object;)V

    :cond_4
    iget-boolean v10, v4, Llqh;->a:Z

    if-eq v9, v10, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x4

    :goto_3
    iget-object v13, v4, Llqh;->e:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v12, v10}, Llqh;->e([BBZ)[B

    move-result-object v10

    :goto_4
    aput-object v10, v6, v3

    iget-object v10, v4, Llqh;->b:Ljava/lang/Object;

    if-nez v10, :cond_6

    new-array v10, v3, [B

    goto :goto_7

    :cond_6
    iget-boolean v12, v4, Llqh;->a:Z

    if-nez v12, :cond_8

    check-cast v10, [B

    array-length v10, v10

    if-ge v10, v11, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    const-string v12, "AE data too large."

    invoke-static {v10, v12}, Lmoz;->q(ZLjava/lang/Object;)V

    :cond_8
    iget-boolean v10, v4, Llqh;->a:Z

    if-eq v9, v10, :cond_9

    const/4 v12, 0x2

    goto :goto_6

    :cond_9
    const/4 v12, 0x5

    :goto_6
    iget-object v13, v4, Llqh;->b:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v12, v10}, Llqh;->e([BBZ)[B

    move-result-object v10

    :goto_7
    aput-object v10, v6, v9

    iget-object v10, v4, Llqh;->d:Ljava/lang/Object;

    const/4 v12, 0x3

    if-nez v10, :cond_a

    new-array v10, v3, [B

    goto :goto_a

    :cond_a
    iget-boolean v13, v4, Llqh;->a:Z

    if-nez v13, :cond_c

    check-cast v10, [B

    array-length v10, v10

    if-ge v10, v11, :cond_b

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    const-string v11, "AWB data too large."

    invoke-static {v10, v11}, Lmoz;->q(ZLjava/lang/Object;)V

    :cond_c
    iget-boolean v10, v4, Llqh;->a:Z

    if-eq v9, v10, :cond_d

    const/4 v11, 0x3

    goto :goto_9

    :cond_d
    const/4 v11, 0x6

    :goto_9
    iget-object v13, v4, Llqh;->d:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v13, v11, v10}, Llqh;->e([BBZ)[B

    move-result-object v10

    :goto_a
    aput-object v10, v6, v8

    iget-object v4, v4, Llqh;->c:Ljava/lang/Object;

    if-nez v4, :cond_e

    new-array v4, v3, [B

    goto :goto_b

    :cond_e
    check-cast v4, [B

    const/4 v8, 0x7

    invoke-static {v4, v8, v9}, Llqh;->e([BBZ)[B

    move-result-object v4

    :goto_b
    aput-object v4, v6, v12

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v4, v5, :cond_f

    aget-object v10, v6, v4

    array-length v10, v10

    add-int/2addr v8, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_f
    new-array v4, v8, [B

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_d
    if-ge v8, v5, :cond_10

    aget-object v11, v6, v8

    array-length v12, v11

    invoke-static {v11, v3, v4, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_10
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput-wide v1, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v0, Ljyq;->i:Ljxa;

    iget-object v6, v6, Ljxa;->c:Ljws;

    sget-object v8, Ljws;->c:Ljws;

    if-ne v6, v8, :cond_11

    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_11

    iget-wide v6, v7, Ljyp;->a:J

    :cond_11
    iget-object v6, v0, Ljyq;->e:Ljxx;

    move/from16 v8, p3

    invoke-interface {v6, v4, v5, v8}, Ljxx;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_12
    move/from16 v8, p3

    iget-wide v9, v7, Ljyp;->a:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found one metadata ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") that doesn\'t match with current video frame ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    if-nez v4, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No metadata found for video frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyq;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Ljyq;->p:I

    iget-object v1, p0, Ljyq;->m:Ljava/util/Deque;

    invoke-direct {p0, p1, p2}, Ljyq;->e(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "MetaEncoder"

    const-string p2, "It is not recording now"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyq;->p:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Ljyq;->l:Lkad;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkad;->close()V

    :cond_1
    iget-object v1, p0, Ljyq;->g:Lnow;

    invoke-interface {v1}, Lnow;->shutdown()V

    iput v2, p0, Ljyq;->p:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(J)V
    .locals 6

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyq;->p:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Ljyq;->p:I

    invoke-direct {p0, p1, p2}, Ljyq;->e(J)J

    move-result-wide p1

    iget-object v1, p0, Ljyq;->m:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmym;

    iget-object v2, p0, Ljyq;->m:Ljava/util/Deque;

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Ljyq;->n:J

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr p1, v4

    add-long/2addr v2, p1

    iput-wide v2, p0, Ljyq;->n:J

    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "MetaEncoder"

    const-string p2, "It is not paused now"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyq;->p:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v2, "MetaEncoder"

    packed-switch v1, :pswitch_data_0

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    const-string v1, "PAUSED"

    goto :goto_0

    :pswitch_1
    const-string v1, "CLOSED"

    goto :goto_0

    :pswitch_2
    const-string v1, "STOPPED"

    goto :goto_0

    :pswitch_3
    const-string v1, "STARTED"

    goto :goto_0

    :pswitch_4
    const-string v1, "READY"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljyq;->n:J

    iget-object v1, p0, Ljyq;->h:Ljwb;

    new-instance v2, Ljyo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljyo;-><init>(Ljyq;I)V

    iget-object v3, p0, Ljyq;->g:Lnow;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iput-object v1, p0, Ljyq;->l:Lkad;

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    const-string v3, "application/meta"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ljyq;->e:Ljxx;

    invoke-interface {v2, v1}, Ljxx;->a(Landroid/media/MediaFormat;)Lmqp;

    move-result-object v1

    iput-object v1, p0, Ljyq;->c:Lmqp;

    iget-object v1, p0, Ljyq;->e:Ljxx;

    invoke-interface {v1}, Ljxx;->k()V

    const/4 v1, 0x2

    iput v1, p0, Ljyq;->p:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Ljyq;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljyq;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Ljyq;->c:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljyq;->a(JI)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Ljyq;->p:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final l(Llqh;J)V
    .locals 9

    iget-object v0, p0, Ljyq;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljyq;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Ljyq;->f:Ljym;

    sget-object v2, Ljya;->c:Ljya;

    invoke-virtual {v1, v2}, Ljym;->d(Ljya;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljyq;->f:Ljym;

    sget-object v2, Ljya;->c:Ljya;

    iget-object v3, p0, Ljyq;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljym;->b(Ljya;Ljava/util/concurrent/atomic/AtomicLong;)V

    :cond_0
    iget-object v1, p0, Ljyq;->k:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_4

    invoke-direct {p0, p2, p3}, Ljyq;->e(J)J

    move-result-wide p2

    iget-object v1, p0, Ljyq;->m:Ljava/util/Deque;

    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmym;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lmym;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Ljyq;->k:Ljava/util/Queue;

    new-instance v8, Ljyp;

    iget-wide v2, p0, Ljyq;->n:J

    sub-long v4, p2, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljyp;-><init>(Llqh;J[B[B)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string p1, "MetaEncoder"

    const-string p2, "Video frame timestamp is very off. Possibly no metadata is written."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
