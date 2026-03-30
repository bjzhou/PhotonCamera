.class final Lptm;
.super Ljava/io/FileInputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field final synthetic a:Lpto;

.field private final b:I

.field private final c:Ljava/io/FileInputStream;

.field private d:Z


# direct methods
.method public constructor <init>(Lpto;Ljava/io/FileInputStream;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iput p1, p0, Lptm;->b:I

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

    :goto_1
    iput-object p2, p0, Lptm;->c:Ljava/io/FileInputStream;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lpto;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lptm;->d:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iput-object p1, p0, Lptm;->a:Lpto;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    goto/16 :goto_1b

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/io/IOException;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_c

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

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

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    :try_start_1
    iput-boolean v0, p0, Lptm;->d:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    move-object v0, v1

    nop

    nop

    nop

    :goto_10
    :try_start_3
    iget-object v1, p0, Lptm;->c:Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    :try_start_4
    iget-boolean v0, p0, Lptm;->d:Z

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_10

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    nop

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    :try_start_6
    throw v0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1b
    :try_start_7
    iget-object v1, p0, Lptm;->a:Lpto;

    nop

    nop

    nop

    sget-object v2, Lpto;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    iget-object v1, v1, Lpto;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    nop

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    :try_start_8
    iget-object v0, p0, Lptm;->a:Lpto;

    nop

    nop

    nop

    sget-object v1, Lpto;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    iget-object v0, v0, Lpto;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    nop

    nop

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_d

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget p0, p0, Lptm;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const-string v1, "MediaInputStream-"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const v0, 0x4

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

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

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

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
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

    nop

    :goto_c
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    goto/32 :goto_3

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

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop
.end method
