.class public final synthetic Llkx;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Llkv;


# direct methods
.method public synthetic constructor <init>(Llkv;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkx;->c:Llkv;

    iput p2, p0, Llkx;->b:I

    iput-object p3, p0, Llkx;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Llkx;->c:Llkv;

    iget v3, v1, Llkx;->b:I

    iget-object v4, v1, Llkx;->a:Ljava/lang/String;

    iget-object v0, v2, Llkv;->c:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkn;

    invoke-virtual {v0}, Llkn;->b()Z

    move-result v5

    const-wide/16 v6, -0x1

    const/4 v10, 0x1

    if-eq v10, v5, :cond_0

    move-wide v11, v6

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x3e8

    :goto_0
    cmp-long v5, v11, v6

    if-nez v5, :cond_1

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_7

    :cond_1
    iget-object v0, v0, Llkn;->a:Lmqp;

    sget-object v0, Lozv;->u:Lozv;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v2, Llkv;->d:Llkz;

    invoke-static {}, Landroid/os/Process;->myPid()I

    iget-object v0, v6, Llkz;->c:Landroid/content/Context;

    invoke-static {v0}, Llhg;->b(Landroid/content/Context;)Z

    move-result v7

    iget-object v0, v6, Llkz;->b:Loiw;

    check-cast v0, Llge;

    invoke-virtual {v0}, Llge;->a()Llkn;

    move-result-object v0

    invoke-static {}, Llho;->h()V

    iget-boolean v0, v0, Llkn;->b:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v12, v6, Llkz;->c:Landroid/content/Context;

    sget-object v13, Llhg;->a:Landroid/app/ActivityManager;

    if-nez v13, :cond_3

    const-class v13, Llhg;

    monitor-enter v13

    :try_start_0
    sget-object v14, Llhg;->a:Landroid/app/ActivityManager;

    if-nez v14, :cond_2

    const-string v14, "activity"

    invoke-virtual {v12, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Landroid/app/ActivityManager;

    sput-object v12, Llhg;->a:Landroid/app/ActivityManager;

    :cond_2
    monitor-exit v13

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    sget-object v12, Llhg;->a:Landroid/app/ActivityManager;

    invoke-virtual {v12, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    move-object v12, v0

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v14, "/proc/self/status"

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/lang/String;

    invoke-static {v0}, Lnfg;->a(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {v15, v0, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Llkz;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v14, "Null or empty proc status"

    const/16 v15, 0x11ad

    invoke-static {v0, v14, v15}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    new-instance v0, Llky;

    invoke-direct {v0}, Llky;-><init>()V

    sget-object v14, Llky;->a:Ljava/util/regex/Pattern;

    invoke-static {v14, v15}, Llkz;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v0, Llky;->f:Ljava/lang/Long;

    sget-object v14, Llky;->b:Ljava/util/regex/Pattern;

    invoke-static {v14, v15}, Llkz;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v0, Llky;->g:Ljava/lang/Long;

    sget-object v14, Llky;->c:Ljava/util/regex/Pattern;

    invoke-static {v14, v15}, Llkz;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v0, Llky;->h:Ljava/lang/Long;

    sget-object v14, Llky;->d:Ljava/util/regex/Pattern;

    invoke-static {v14, v15}, Llkz;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v0, Llky;->i:Ljava/lang/Long;

    sget-object v14, Llky;->e:Ljava/util/regex/Pattern;

    invoke-static {v14, v15}, Llkz;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v0, Llky;->j:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v14, Llkz;->a:Lnak;

    invoke-virtual {v14}, Lnaf;->b()Lnaz;

    move-result-object v14

    check-cast v14, Lnah;

    invoke-interface {v14, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v14, 0x11ac

    invoke-interface {v0, v14}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v14, "Error reading proc status"

    invoke-interface {v0, v14}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    :goto_4
    sget-object v13, Loyr;->g:Loyr;

    invoke-virtual {v13}, Lnws;->O()Lnwn;

    move-result-object v13

    check-cast v13, Lnwp;

    sget-object v14, Loyq;->c:Loyq;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    sget-object v15, Loyo;->i:Loyo;

    invoke-virtual {v15}, Lnws;->O()Lnwn;

    move-result-object v15

    if-nez v12, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v8, v12, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v16, 0xa

    shr-long v8, v8, v16

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_7
    long-to-int v9, v8

    iget-object v8, v15, Lnwn;->b:Lnws;

    check-cast v8, Loyo;

    iget v11, v8, Loyo;->a:I

    const/high16 v17, 0x20000

    or-int v11, v11, v17

    iput v11, v8, Loyo;->a:I

    iput v9, v8, Loyo;->b:I

    iget-wide v8, v12, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v11, 0x14

    shr-long/2addr v8, v11

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_8
    long-to-int v9, v8

    iget-object v8, v15, Lnwn;->b:Lnws;

    check-cast v8, Loyo;

    iget v11, v8, Loyo;->a:I

    const/high16 v12, 0x40000

    or-int/2addr v11, v12

    iput v11, v8, Loyo;->a:I

    iput v9, v8, Loyo;->c:I

    :goto_5
    if-nez v0, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v8, v0, Llky;->f:Ljava/lang/Long;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_a
    iget-object v11, v15, Lnwn;->b:Lnws;

    check-cast v11, Loyo;

    iget v12, v11, Loyo;->a:I

    const/high16 v17, 0x80000

    or-int v12, v12, v17

    iput v12, v11, Loyo;->a:I

    iput-wide v8, v11, Loyo;->d:J

    :cond_b
    iget-object v8, v0, Llky;->g:Ljava/lang/Long;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_c
    iget-object v11, v15, Lnwn;->b:Lnws;

    check-cast v11, Loyo;

    iget v12, v11, Loyo;->a:I

    const/high16 v17, 0x100000

    or-int v12, v12, v17

    iput v12, v11, Loyo;->a:I

    iput-wide v8, v11, Loyo;->e:J

    :cond_d
    iget-object v8, v0, Llky;->h:Ljava/lang/Long;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_e
    iget-object v11, v15, Lnwn;->b:Lnws;

    check-cast v11, Loyo;

    iget v12, v11, Loyo;->a:I

    const/high16 v17, 0x200000

    or-int v12, v12, v17

    iput v12, v11, Loyo;->a:I

    iput-wide v8, v11, Loyo;->f:J

    :cond_f
    iget-object v8, v0, Llky;->i:Ljava/lang/Long;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v11, v15, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_10
    iget-object v11, v15, Lnwn;->b:Lnws;

    check-cast v11, Loyo;

    iget v12, v11, Loyo;->a:I

    const/high16 v17, 0x400000

    or-int v12, v12, v17

    iput v12, v11, Loyo;->a:I

    iput-wide v8, v11, Loyo;->g:J

    :cond_11
    iget-object v0, v0, Llky;->j:Ljava/lang/Long;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v15, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v15}, Lnwn;->p()V

    :cond_12
    iget-object v0, v15, Lnwn;->b:Lnws;

    check-cast v0, Loyo;

    iget v11, v0, Loyo;->a:I

    const/high16 v12, 0x800000

    or-int/2addr v11, v12

    iput v11, v0, Loyo;->a:I

    iput-wide v8, v0, Loyo;->h:J

    :cond_13
    :goto_6
    invoke-virtual {v15}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loyo;

    iget-object v8, v14, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_14
    iget-object v8, v14, Lnwn;->b:Lnws;

    check-cast v8, Loyq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v8, Loyq;->b:Loyo;

    iget v0, v8, Loyq;->a:I

    or-int/2addr v0, v10

    iput v0, v8, Loyq;->a:I

    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_15
    iget-object v0, v13, Lnwp;->b:Lnws;

    check-cast v0, Loyr;

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Loyq;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v0, Loyr;->b:Loyq;

    iget v8, v0, Loyr;->a:I

    or-int/2addr v8, v10

    iput v8, v0, Loyr;->a:I

    sget-object v0, Lozb;->c:Lozb;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-static {v7}, Llho;->e(Z)Loza;

    move-result-object v7

    iget-object v8, v0, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_16
    iget-object v8, v0, Lnwn;->b:Lnws;

    check-cast v8, Lozb;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Lozb;->b:Loza;

    iget v7, v8, Lozb;->a:I

    or-int/2addr v7, v10

    iput v7, v8, Lozb;->a:I

    iget-object v7, v13, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_17
    iget-object v7, v13, Lnwp;->b:Lnws;

    check-cast v7, Loyr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v7, Loyr;->c:Lozb;

    iget v0, v7, Loyr;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v7, Loyr;->a:I

    sget-object v0, Loyp;->c:Loyp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v6, v6, Llkz;->c:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_18
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyp;

    iget v8, v7, Loyp;->a:I

    or-int/2addr v8, v10

    iput v8, v7, Loyp;->a:I

    iput-boolean v6, v7, Loyp;->b:Z

    iget-object v6, v13, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_19
    iget-object v6, v13, Lnwp;->b:Lnws;

    check-cast v6, Loyr;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loyp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Loyr;->e:Loyp;

    iget v0, v6, Loyr;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v6, Loyr;->a:I

    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_1a
    iget-object v0, v13, Lnwp;->b:Lnws;

    check-cast v0, Loyr;

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Loyr;->d:I

    iget v3, v0, Loyr;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Loyr;->a:I

    if-eqz v4, :cond_1c

    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_1b
    iget-object v0, v13, Lnwp;->b:Lnws;

    check-cast v0, Loyr;

    iget v3, v0, Loyr;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Loyr;->a:I

    iput-object v4, v0, Loyr;->f:Ljava/lang/String;

    :cond_1c
    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loyr;

    iget-object v3, v5, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1d
    iget-object v3, v5, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lozv;->e:Loyr;

    iget v0, v3, Lozv;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Lozv;->a:I

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozv;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Llie;->b:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Llie;->c(Z)V

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Llie;->f:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Llie;->e(Lozv;)V

    iput-object v4, v3, Llie;->d:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Llie;->d(Z)V

    iget-object v0, v2, Llkv;->e:Lmap;

    invoke-virtual {v3}, Llie;->a()Llif;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    :goto_7
    return-object v0

    :goto_8
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
