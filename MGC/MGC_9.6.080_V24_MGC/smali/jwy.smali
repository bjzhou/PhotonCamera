.class final Ljwy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqep;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Lsuu;

.field final synthetic c:Ljwz;

.field private final d:Lqep;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljwz;Lqep;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljwy;->d:Lqep;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljwy;->c:Ljwz;

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

    nop

    :goto_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

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

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljwy;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljwy;->b:Lsuu;

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

    :goto_6
    new-instance p1, Lsuu;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljwy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsui;)V
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    iget-object v0, p0, Ljwy;->d:Lqep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljwy;->b:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Lqep;->a(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/16 v1, 0xad8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1, p2, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljwz;->b:Lqem;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    :try_start_0
    iget-object v0, p0, Ljwy;->d:Lqep;

    nop

    invoke-interface {v0, p1, p2}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Ljwy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p2, Ljwz;->a:Lsdb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ljwy;->c:Ljwz;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Lqem;->c()V

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Error occurred while writing"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Ljwy;->c:Ljwz;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljwz;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    nop

    nop

    nop

    iget-object v2, p0, Ljwy;->c:Ljwz;

    nop

    iget-boolean v3, v2, Ljwz;->f:Z

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v2, v2, Ljwz;->b:Lqem;

    nop

    invoke-interface {v2}, Lqem;->b()Lsui;

    move-result-object v2

    nop

    invoke-interface {v2}, Lsui;->isCancelled()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    nop

    iget-object v0, p0, Ljwy;->c:Ljwz;

    nop

    iget-object v0, v0, Ljwz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Ljwy;->c:Ljwz;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Ljwz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v4

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v2, Ljwz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v5, -0x1

    nop

    nop

    move v6, v5

    nop

    nop

    :cond_1
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    if-eqz v7, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Ljwy;

    nop

    iget-object v9, v7, Ljwy;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lsuu;->isDone()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_3

    nop

    iget-object v7, v7, Ljwy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    move v8, v1

    nop

    nop

    :cond_2
    invoke-static {v8}, Lrrf;->x(Z)V

    goto :goto_4

    nop

    nop

    :cond_3
    iget-object v8, v7, Ljwy;->b:Lsuu;

    nop

    nop

    invoke-static {v8}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Landroid/media/MediaFormat;

    nop

    const-string v9, "mime"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lpuq;->ad(Ljava/lang/String;)Z

    move-result v9

    nop

    if-eqz v9, :cond_4

    nop

    nop

    nop

    iget-object v7, v7, Ljwy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-string v9, "application/microvideo-meta-stream"

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v7, Ljwy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    :cond_5
    monitor-exit v4

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    if-eq v6, v5, :cond_9

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    const/16 v4, 0x19

    nop

    nop

    if-ge v2, v4, :cond_6

    nop

    nop

    goto :goto_6

    nop

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    const-string v3, "Number of motion and video frames substantially differ (video=%s motion=%d)."

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    nop

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    if-ge v8, v2, :cond_a

    nop

    nop

    nop

    nop

    move v8, v2

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_b
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    if-lt v8, v1, :cond_c

    nop

    nop

    nop

    iget-object v1, p0, Ljwy;->c:Ljwz;

    nop

    nop

    iget-object v1, v1, Ljwz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    const-string v3, "Too few video frames (max: %d) in microvideo"

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    const-string v2, "No video tracks are being added; aborting microvideo."

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    :try_start_4
    monitor-exit v4

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    :try_start_7
    sget-object v1, Ljwz;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xad6

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Error occurred while closing"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    iget-object v0, p0, Ljwy;->c:Ljwz;

    nop

    nop

    iget-object v0, v0, Ljwz;->b:Lqem;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqem;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljwy;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    goto :goto_12

    nop

    nop

    :catchall_3
    move-exception v0

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

    :goto_a
    invoke-interface {p0}, Lqep;->close()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljwy;->d:Lqep;

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

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ljwy;->d:Lqep;

    nop

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

    :goto_11
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :cond_e
    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

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

    :goto_15
    goto/32 :goto_f

    nop

    :goto_16
    invoke-interface {p0}, Lqep;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_e

    nop
.end method
