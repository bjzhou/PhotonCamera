.class public final Lfmw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfmu;


# instance fields
.field private final a:Ljava/io/File;

.field private b:Lfit;

.field private final c:Liof;

.field private final d:Liof;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()Lfit;
    .locals 11

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

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

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lfit;->c()V

    iget-object v2, v1, Lfit;->c:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lfit;->b(Ljava/io/File;)V

    iget-object v2, v1, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lfis;

    nop

    nop

    iget-object v5, v4, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    move v5, v3

    nop

    nop

    nop

    :goto_4
    iget v7, v1, Lfit;->d:I

    nop

    nop

    nop

    nop

    nop

    if-ge v5, v7, :cond_1

    nop

    nop

    iget-wide v7, v1, Lfit;->e:J

    nop

    nop

    iget-object v5, v4, Lfis;->b:[J

    nop

    nop

    nop

    nop

    nop

    aget-wide v9, v5, v3

    nop

    nop

    nop

    add-long/2addr v7, v9

    nop

    nop

    iput-wide v7, v1, Lfit;->e:J

    nop

    nop

    nop

    nop

    move v5, v6

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    :cond_2
    const/4 v5, 0x0

    nop

    nop

    iput-object v5, v4, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v7, v1, Lfit;->d:I

    nop

    if-ge v5, v7, :cond_3

    nop

    invoke-virtual {v4}, Lfis;->c()Ljava/io/File;

    move-result-object v5

    nop

    invoke-static {v5}, Lfit;->b(Ljava/io/File;)V

    invoke-virtual {v4}, Lfis;->d()Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lfit;->b(Ljava/io/File;)V

    move v5, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-object v0

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_f
    const v1, 0x16

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

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfmw;->b:Lfit;

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfmw;->a:Ljava/io/File;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->aYVlU:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    const-string v1, "journal"

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {v2, v4, v3}, Lfit;->e(Ljava/io/File;Ljava/io/File;Z)V

    :cond_6
    :goto_11
    new-instance v1, Lfit;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lfit;-><init>(Ljava/io/File;)V

    iget-object v2, v1, Lfit;->b:Ljava/io/File;

    nop

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DiskLruCache "

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removing"

    nop

    nop

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lfit;->close()V

    iget-object v1, v1, Lfit;->a:Ljava/io/File;

    nop

    nop

    nop

    invoke-static {v1}, Lfiw;->b(Ljava/io/File;)V

    :goto_13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lfit;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lfit;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lfit;->d()V

    :cond_7
    iput-object v1, p0, Lfmw;->b:Lfit;

    nop

    nop

    nop

    :cond_8
    iget-object v0, p0, Lfmw;->b:Lfit;

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v1, v1}, Liof;-><init>([B[B[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Liof;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    new-instance p1, Liof;

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    iput-object p1, p0, Lfmw;->c:Liof;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lfmw;->a:Ljava/io/File;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, v1}, Liof;-><init>([C)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lfmw;->d:Liof;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfjl;)Ljava/io/File;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfmw;->c:Liof;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lfmw;->33f5b80483094659737b73d90f80a8a4m()Lfit;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lfit;->j(Ljava/lang/String;)Lfdn;

    move-result-object p0

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_1

    nop

    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    check-cast p0, [Ljava/io/File;

    nop

    const/4 p1, 0x0

    nop

    aget-object v0, p0, p1

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1}, Liof;->V(Lfjl;)Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_e
    sget-object v1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->mcezDR:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const v0, 0x11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "Unable to get from disk cache"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lfjl;Lhdu;)V
    .locals 6

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v1, p0, Lfmw;->c:Liof;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v1, Lofu;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-direct {v1, v2}, Lofu;-><init>([C)V

    :goto_3
    iget-object v2, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p2

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p1}, Liof;->V(Lfjl;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Liof;->W(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lfmw;->d:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_15

    nop

    nop

    :cond_2
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2

    nop

    :catchall_1
    move-exception p2

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p2

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    nop

    :try_start_4
    invoke-virtual {v0}, Lfir;->b()V

    throw p2

    nop

    :goto_10
    new-instance p2, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v0, "Had two simultaneous puts for: "

    nop

    invoke-static {p1, v0}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    iget-object v0, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v1, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lofu;

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    iget-object v1, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lfdn;

    nop

    nop

    nop

    iget-object v2, v2, Lfdn;->a:Ljava/lang/Object;

    nop

    monitor-enter v2

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    check-cast v1, Lfdn;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lofu;

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lfmw;->d:Liof;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p2

    nop

    nop

    nop

    :try_start_7
    const-string v0, "DiskLruCacheWrapper"

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    const-string v0, "DiskLruCacheWrapper"

    nop

    const-string v1, "Unable to put to disk cache"

    nop

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_3
    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Liof;->W(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lfmw;->d:Liof;

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

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_1b

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    :try_start_8
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw p0

    nop

    nop

    nop

    :cond_4
    :goto_1b
    iget v2, v1, Lofu;->a:I

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Lofu;->a:I

    nop

    nop

    monitor-exit v0

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    invoke-direct {p0}, Lfmw;->33f5b80483094659737b73d90f80a8a4m()Lfit;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lfit;->j(Ljava/lang/String;)Lfdn;

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    :cond_5
    invoke-virtual {v0, p1}, Lfit;->h(Ljava/lang/String;)Lfir;

    move-result-object v0

    nop

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_6
    :try_start_b
    iget-object v1, v0, Lfir;->d:Lfit;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v2, v0, Lfir;->a:Lfis;

    nop

    nop

    iget-object v4, v2, Lfis;->f:Lfir;

    nop

    nop

    nop

    if-ne v4, v0, :cond_2

    nop

    iget-boolean v4, v2, Lfis;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    iget-object v4, v0, Lfir;->b:[Z

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    aput-boolean v3, v4, v5

    nop

    nop

    :cond_7
    invoke-virtual {v2}, Lfis;->d()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    iget-object v4, v0, Lfir;->d:Lfit;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lfit;->a:Ljava/io/File;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v1, p2, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v4, p2, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p2, Lfjp;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4, v2, p2}, Lfjd;->a(Ljava/lang/Object;Ljava/io/File;Lfjp;)Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_8

    nop

    iget-object p2, v0, Lfir;->d:Lfit;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0, v3}, Lfit;->a(Lfir;Z)V

    iput-boolean v3, v0, Lfir;->c:Z

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_8
    :try_start_e
    invoke-virtual {v0}, Lfir;->b()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
