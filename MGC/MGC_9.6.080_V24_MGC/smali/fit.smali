.class public final Lfit;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:I

.field public e:J

.field public f:Ljava/io/Writer;

.field public final g:Ljava/util/LinkedHashMap;

.field public h:I

.field final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final j:Ljava/io/File;

.field private final k:I

.field private final l:J

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "cache is closed"

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

    :goto_4
    iget-object p0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 14

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v13, Lfiq;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput v5, p0, Lfit;->k:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    invoke-direct {v13}, Lfiq;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    const-wide/16 v9, 0x3c

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfit;->a:Ljava/io/File;

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

    :goto_e
    iput-object v0, p0, Lfit;->b:Ljava/io/File;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfit;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v0, p0, Lfit;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v5}, Lpbm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/io/File;

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

    nop

    :goto_16
    const-wide/16 v0, 0x0

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

    nop

    nop

    :goto_17
    new-instance v0, Lpbm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto/32 :goto_f

    nop

    nop

    :goto_19
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v4, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v8, 0x1

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    const-string v1, "journal.bkp"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide v0, p0, Lfit;->e:J

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_26
    new-instance v0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    new-instance v2, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

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

    :goto_29
    const-string v1, "journal"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2a
    iput v5, p0, Lfit;->d:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Lfit;->c:Ljava/io/File;

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

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lfit;->j:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v2, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    const-wide/32 v0, 0xfa00000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_31
    const-string v1, "journal.tmp"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lfit;->n:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_33
    iput-wide v0, p0, Lfit;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method public static b(Ljava/io/File;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

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

    :goto_1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/io/IOException;

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

    :goto_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/io/File;Ljava/io/File;Z)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    const/16 v2, 0xb7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/io/IOException;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_d
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

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
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput-object p1, v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

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

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xe

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

    :goto_17
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method private static l(Ljava/io/Writer;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    const v0, 0x6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_3

    nop

    nop
.end method

.method private static m(Ljava/io/Writer;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

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

    :goto_1
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    nop

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_11
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lfir;Z)V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

    nop

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

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_11

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :cond_3
    :goto_11
    :try_start_1
    iget-object p1, p0, Lfit;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lfit;->n:Ljava/util/concurrent/Callable;

    nop

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lfir;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Newly created entry didn\'t create value for index 0"

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_5
    move p1, v2

    nop

    nop

    nop

    :goto_14
    iget v3, p0, Lfit;->d:I

    nop

    nop

    if-ge p1, v3, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfis;->d()Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    invoke-virtual {v0}, Lfis;->c()Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p1, v0, Lfis;->b:[J

    nop

    aget-wide v4, p1, v2

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    nop

    iget-object p1, v0, Lfis;->b:[J

    nop

    nop

    nop

    nop

    nop

    aput-wide v6, p1, v2

    nop

    nop

    nop

    nop

    iget-wide v8, p0, Lfit;->e:J

    nop

    nop

    nop

    sub-long/2addr v8, v4

    nop

    nop

    nop

    nop

    add-long/2addr v8, v6

    nop

    iput-wide v8, p0, Lfit;->e:J

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_6
    invoke-static {p1}, Lfit;->b(Ljava/io/File;)V

    :cond_7
    :goto_15
    move p1, v1

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    :cond_8
    iget p1, p0, Lfit;->h:I

    nop

    nop

    nop

    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lfit;->h:I

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    iput-object p1, v0, Lfis;->f:Lfir;

    nop

    nop

    iget-boolean p1, v0, Lfis;->e:Z

    nop

    nop

    nop

    nop

    nop

    or-int/2addr p1, p2

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_9

    nop

    nop

    nop

    invoke-static {v0}, Lfis;->b(Lfis;)V

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    const-string v3, "CLEAN"

    nop

    nop

    nop

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    iget-object v2, v0, Lfis;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    invoke-virtual {v0}, Lfis;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_a

    nop

    nop

    iget-wide p1, p0, Lfit;->m:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v0, 0x1

    nop

    nop

    nop

    add-long/2addr p1, v0

    nop

    iput-wide p1, p0, Lfit;->m:J

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    :cond_9
    iget-object p1, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    iget-object p2, v0, Lfis;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    const-string p2, "REMOVE"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    iget-object p2, v0, Lfis;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_a
    :goto_16
    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    invoke-static {p1}, Lfit;->m(Ljava/io/Writer;)V

    iget-wide p1, p0, Lfit;->e:J

    nop

    iget-wide v0, p0, Lfit;->l:J

    nop

    nop

    nop

    cmp-long p1, p1, v0

    nop

    nop

    if-gtz p1, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfit;->g()Z

    move-result p1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p1, Lfir;->a:Lfis;

    nop

    nop

    iget-object v1, v0, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, p1, :cond_0

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    const/4 v2, 0x0

    nop

    if-eqz p2, :cond_5

    nop

    iget-boolean v3, v0, Lfis;->e:Z

    nop

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    :goto_18
    iget v4, p0, Lfit;->d:I

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_5

    nop

    iget-object v3, p1, Lfir;->b:[Z

    nop

    aget-boolean v3, v3, v2

    nop

    nop

    if-eqz v3, :cond_4

    nop

    invoke-virtual {v0}, Lfis;->d()Ljava/io/File;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_b

    nop

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    :cond_b
    invoke-virtual {p1}, Lfir;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 11

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v8, v6, 0x1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    nop

    if-ne v5, v3, :cond_1

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v9, :cond_2

    nop

    nop

    nop

    const-string v6, "REMOVE"

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_0

    nop

    nop

    iget-object v4, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    move v6, v9

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    :cond_2
    :goto_2
    iget-object v9, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lfis;

    nop

    nop

    if-nez v9, :cond_3

    nop

    nop

    nop

    nop

    new-instance v9, Lfis;

    nop

    invoke-direct {v9, p0, v8}, Lfis;-><init>(Lfit;Ljava/lang/String;)V

    iget-object v10, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    if-eq v5, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v8, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v6, "CLEAN"

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const-string v5, " "

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lfis;->b(Lfis;)V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    iput-object v5, v9, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    nop

    array-length v5, v4

    nop

    nop

    iget-object v6, v9, Lfis;->g:Lfit;

    nop

    nop

    nop

    nop

    iget v6, v6, Lfit;->d:I

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-direct {v2, v3, v4}, Lfiv;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_1
    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v8, "libcore.io.DiskLruCache"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    const-string v8, "1"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget v8, p0, Lfit;->k:I

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget v5, p0, Lfit;->d:I

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    const-string v5, ""

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, p0, Lfit;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_7
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :cond_5
    :goto_b
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, ", "

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

    :goto_f
    if-nez v5, :cond_6

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

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v5, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Lfiw;->a(Ljava/io/Closeable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    const-string v7, "unexpected journal line: "

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v2, Lfiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    if-ne v6, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "unexpected journal header: ["

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v2}, Lfiv;->a()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const/16 v5, 0x20

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    move v5, v0

    nop

    nop

    nop

    nop

    :goto_1d
    :try_start_4
    array-length v6, v4

    nop

    nop

    nop

    if-ge v5, v6, :cond_c

    nop

    nop

    nop

    nop

    iget-object v6, v9, Lfis;->b:[J

    nop

    nop

    nop

    aget-object v7, v4, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    nop

    nop

    nop

    aput-wide v7, v6, v5

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Lfiw;->a(Ljava/io/Closeable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xd

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

    :goto_20
    new-instance v3, Ljava/io/FileInputStream;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_5
    invoke-static {v4}, Lfis;->e([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    nop

    nop

    nop

    nop

    throw v0

    nop

    :goto_22
    invoke-static {v4}, Lfis;->e([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    :cond_9
    move v6, v8

    nop

    nop

    nop

    nop

    nop

    :cond_a
    if-ne v5, v3, :cond_b

    nop

    if-ne v6, v8, :cond_b

    nop

    const-string v8, "DIRTY"

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_b

    nop

    nop

    new-instance v4, Lfir;

    nop

    nop

    nop

    invoke-direct {v4, p0, v9}, Lfir;-><init>(Lfit;Lfis;)V

    iput-object v4, v9, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_b
    if-ne v5, v3, :cond_d

    nop

    const/4 v5, 0x4

    nop

    nop

    if-ne v6, v5, :cond_d

    nop

    nop

    nop

    const-string v5, "READ"

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_d

    nop

    nop

    nop

    :cond_c
    :goto_23
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_d
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :goto_24
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    :try_start_6
    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    sub-int/2addr v1, v0

    nop

    nop

    iput v1, p0, Lfit;->h:I

    nop

    nop

    nop

    nop

    iget v0, v2, Lfiv;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v3, :cond_e

    nop

    nop

    nop

    invoke-virtual {p0}, Lfit;->d()V

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_e
    new-instance v0, Ljava/io/BufferedWriter;

    nop

    nop

    nop

    new-instance v1, Ljava/io/OutputStreamWriter;

    nop

    new-instance v3, Ljava/io/FileOutputStream;

    nop

    nop

    iget-object v4, p0, Lfit;->b:Ljava/io/File;

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lfiw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_25
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v4, Lfiw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    :try_start_0
    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v2, v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lfis;

    nop

    iget-object v3, v3, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_0

    nop

    invoke-virtual {v3}, Lfir;->a()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {p0}, Lfit;->f()V

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lfit;->l(Ljava/io/Writer;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_10

    nop

    :goto_9
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_8

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {v1}, Lfit;->l(Ljava/io/Writer;)V

    iget-object v0, p0, Lfit;->b:Ljava/io/File;

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfit;->b:Ljava/io/File;

    nop

    nop

    nop

    iget-object v2, p0, Lfit;->j:Ljava/io/File;

    nop

    nop

    invoke-static {v0, v2, v1}, Lfit;->e(Ljava/io/File;Ljava/io/File;Z)V

    :cond_1
    iget-object v0, p0, Lfit;->c:Ljava/io/File;

    nop

    nop

    iget-object v2, p0, Lfit;->b:Ljava/io/File;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v3}, Lfit;->e(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lfit;->j:Ljava/io/File;

    nop

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lfit;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/io/BufferedWriter;

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/io/OutputStreamWriter;

    nop

    nop

    nop

    new-instance v4, Ljava/io/FileOutputStream;

    nop

    invoke-direct {v4, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v0, Lfiw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lfit;->f:Ljava/io/Writer;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v1}, Lfit;->l(Ljava/io/Writer;)V

    throw v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    invoke-static {v0}, Lfit;->l(Ljava/io/Writer;)V

    :cond_3
    iget-object v0, p0, Lfit;->c:Ljava/io/File;

    nop

    nop

    nop

    new-instance v1, Ljava/io/BufferedWriter;

    nop

    nop

    nop

    new-instance v2, Ljava/io/OutputStreamWriter;

    nop

    nop

    new-instance v3, Ljava/io/FileOutputStream;

    nop

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lfiw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "libcore.io.DiskLruCache"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lfit;->k:I

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lfit;->d:I

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    nop

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lfis;

    nop

    nop

    nop

    iget-object v3, v2, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lfis;->a:Ljava/lang/String;

    nop

    const-string v3, "DIRTY "

    nop

    nop

    const-string v4, "\n"

    nop

    nop

    nop

    invoke-static {v2, v3, v4}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v3, v2, Lfis;->a:Ljava/lang/String;

    nop

    invoke-virtual {v2}, Lfis;->a()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

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

    :goto_e
    const v1, 0x6

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lfit;->l:J

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

    nop

    :goto_5
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lfit;->e:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :goto_d
    goto/32 :goto_14

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
    invoke-virtual {p0, v0}, Lfit;->i(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final g()Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ge v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

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

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-ge v0, v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0x13

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

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const/16 v1, 0x7d0

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

    :goto_10
    return p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lfit;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(Ljava/lang/String;)Lfir;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const v1, 0x13

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

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    new-instance v1, Lfir;

    nop

    nop

    invoke-direct {v1, p0, v0}, Lfir;-><init>(Lfit;Lfis;)V

    iput-object v1, v0, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    const-string v2, "DIRTY"

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    const/16 v0, 0xa

    nop

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    invoke-static {p1}, Lfit;->m(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

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
    invoke-direct {p0}, Lfit;->3fd9578e124c68aa49885b22b61b4ec8m()V

    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lfis;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    new-instance v0, Lfis;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1}, Lfis;-><init>(Lfit;Ljava/lang/String;)V

    iget-object v1, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, v0, Lfis;->f:Lfir;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final declared-synchronized i(Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_2
    const v0, 0x18

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

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lfit;->3fd9578e124c68aa49885b22b61b4ec8m()V

    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lfis;

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lfis;->f:Lfir;

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, p0, Lfit;->d:I

    nop

    nop

    const/4 v4, 0x1

    nop

    if-ge v2, v3, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfis;->c()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_2
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v1, "failed to delete "

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    iget-wide v2, p0, Lfit;->e:J

    nop

    nop

    nop

    iget-object v5, v0, Lfis;->b:[J

    nop

    nop

    aget-wide v6, v5, v1

    nop

    nop

    nop

    sub-long/2addr v2, v6

    nop

    nop

    iput-wide v2, p0, Lfit;->e:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-wide v2, v5, v1

    nop

    nop

    move v2, v4

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_4
    iget v0, p0, Lfit;->h:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v0, v4

    nop

    iput v0, p0, Lfit;->h:I

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    const-string v1, "REMOVE"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    const/16 v1, 0x20

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lfit;->g()Z

    move-result p1

    nop

    if-eqz p1, :cond_0

    nop

    iget-object p1, p0, Lfit;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    iget-object v0, p0, Lfit;->n:Ljava/util/concurrent/Callable;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop
.end method

.method public final declared-synchronized j(Ljava/lang/String;)Lfdn;
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    :cond_0
    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
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

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_4
    return-object p0

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

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lfit;->3fd9578e124c68aa49885b22b61b4ec8m()V

    iget-object v0, p0, Lfit;->g:Ljava/util/LinkedHashMap;

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lfis;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    :cond_2
    iget-boolean v1, v0, Lfis;->e:Z

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object v1, v0, Lfis;->c:[Ljava/io/File;

    nop

    nop

    nop

    array-length v2, v1

    nop

    nop

    const/4 v3, 0x0

    nop

    move v4, v3

    nop

    :goto_10
    const/4 v5, 0x1

    nop

    nop

    nop

    if-ge v4, v2, :cond_3

    nop

    nop

    nop

    aget-object v4, v1, v3

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    move v4, v5

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_3
    iget v1, p0, Lfit;->h:I

    nop

    nop

    nop

    add-int/2addr v1, v5

    nop

    iput v1, p0, Lfit;->h:I

    nop

    iget-object v1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    const-string v2, "READ"

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    const/16 v2, 0x20

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xa

    nop

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-virtual {p0}, Lfit;->g()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lfit;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfit;->n:Ljava/util/concurrent/Callable;

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_4
    new-instance p1, Lfdn;

    nop

    nop

    iget-object v0, v0, Lfis;->c:[Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lfdn;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
