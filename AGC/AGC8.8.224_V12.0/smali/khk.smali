.class public final synthetic Lkhk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljzi;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkhi;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkvu;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llfq;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llss;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lodm;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lodo;I)V
    .locals 0

    iput p2, p0, Lkhk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhk;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lkhk;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Lods; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v0

    check-cast v3, Lodm;

    invoke-virtual {v3}, Lodm;->c()V
    :try_end_2
    .catch Lods; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    move-object v3, v0

    check-cast v3, Lodm;

    iget-object v3, v3, Lodm;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lodm;

    iget-object v4, v4, Lodm;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lods; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v8, v0

    check-cast v8, Lodm;

    invoke-virtual {v8}, Lodm;->e()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    check-cast v8, Lodm;

    invoke-virtual {v8}, Lodm;->c()V

    const/4 v8, 0x0

    :goto_1
    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_0

    move-object v10, v0

    check-cast v10, Lodm;

    invoke-virtual {v10}, Lodm;->e()Z

    move-result v10
    :try_end_4
    .catch Lods; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v10, :cond_0

    :try_start_5
    move-object v10, v0

    check-cast v10, Lodm;

    iget-object v10, v10, Lodm;->b:Lodj;

    move-object v11, v0

    check-cast v11, Lodm;

    iget-object v11, v11, Lodm;->c:[B

    sub-int/2addr v9, v8

    invoke-interface {v10, v11, v8, v9}, Lodj;->a([BII)I

    move-result v9

    move-object v10, v0

    check-cast v10, Lodm;

    iget-wide v10, v10, Lodm;->d:J

    int-to-long v12, v9

    add-long/2addr v10, v12

    move-object v12, v0

    check-cast v12, Lodm;

    iput-wide v10, v12, Lodm;->d:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lods; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v8, v9

    :try_start_6
    move-object v10, v0

    check-cast v10, Lodm;

    iget-object v10, v10, Lodm;->c:[B

    sub-int v11, v8, v9

    invoke-virtual {v3, v10, v11, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lods; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_7
    move-object v1, v0

    check-cast v1, Lodm;

    invoke-virtual {v1}, Lodm;->f()Llpu;

    move-result-object v1

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Lods;

    sget-object v3, Lodr;->c:Lodr;

    invoke-direct {v2, v3, v1}, Lods;-><init>(Lodr;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    add-int/2addr v7, v8

    move-object v8, v0

    check-cast v8, Lodm;

    iget v8, v8, Lodm;->e:I

    if-lt v7, v8, :cond_4

    move-object v8, v0

    check-cast v8, Lodm;

    iget v8, v8, Lodm;->f:I

    if-lez v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v4

    move-object v12, v0

    check-cast v12, Lodm;

    iget v12, v12, Lodm;->f:I

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_1

    move-wide v4, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_4

    monitor-enter v0
    :try_end_7
    .catch Lods; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    move-object v7, v0

    check-cast v7, Lodm;

    iget-object v7, v7, Lodm;->h:Llho;

    if-eqz v7, :cond_3

    move-object v8, v7

    check-cast v8, Lodn;

    iget-object v8, v8, Lodn;->e:Llho;

    check-cast v7, Lodn;

    iget-object v7, v7, Lodn;->d:Lodq;

    invoke-virtual {v8, v7}, Llho;->X(Lodq;)V

    :cond_3
    monitor-exit v0

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1

    :cond_4
    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    check-cast v1, Lodm;

    invoke-virtual {v1}, Lodm;->f()Llpu;

    move-result-object v1
    :try_end_9
    .catch Lods; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_a
    move-object v3, v0

    check-cast v3, Lodm;

    invoke-virtual {v3}, Lodm;->f()Llpu;

    move-result-object v1
    :try_end_a
    .catch Lods; {:try_start_a .. :try_end_a} :catch_3

    :goto_3
    :try_start_b
    monitor-enter v0
    :try_end_b
    .catch Lods; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v3, Lmaf;

    invoke-direct {v3, v1, v2, v2}, Lmaf;-><init>(Llpu;[B[B)V
    :try_end_d
    .catch Lods; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v1

    :catch_3
    move-exception v2

    new-instance v2, Lods;

    sget-object v3, Lodr;->d:Lodr;

    invoke-direct {v2, v3, v1}, Lods;-><init>(Lodr;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v2, Lods;

    sget-object v3, Lodr;->a:Lodr;

    invoke-direct {v2, v3, v1}, Lods;-><init>(Lodr;Ljava/lang/Throwable;)V

    throw v2
    :try_end_f
    .catch Lods; {:try_start_f .. :try_end_f} :catch_5

    :catchall_2
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v1
    :try_end_11
    .catch Lods; {:try_start_11 .. :try_end_11} :catch_5

    :catch_5
    move-exception v1

    monitor-enter v0

    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    new-instance v3, Lmaf;

    invoke-direct {v3, v1}, Lmaf;-><init>(Lods;)V

    :goto_4
    return-object v3

    :catchall_3
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v1

    :pswitch_1
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Llss;

    iget-object v1, v1, Llss;->b:Llst;

    iget-object v1, v1, Llst;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    check-cast v0, Llss;

    iput-object v2, v0, Llss;->a:Ljava/util/List;

    monitor-exit v1

    return-object v2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v0

    :pswitch_2
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Labs;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Labx;->d(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-object v2

    :pswitch_7
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Llfq;

    invoke-virtual {v0}, Llfq;->b()V

    return-object v2

    :pswitch_8
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Llfq;

    invoke-virtual {v0}, Llfq;->b()V

    return-object v2

    :pswitch_9
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Lkvu;

    iget-object v0, v0, Lkvu;->a:Lkuy;

    invoke-interface {v0}, Lkuy;->a()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->toByteArray()[B

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Lkvu;

    iget-object v0, v0, Lkvu;->a:Lkuy;

    invoke-interface {v0}, Lkuy;->a()Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/lens/lenslite/api/LinkConfig;->toByteArray()[B

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Lkhi;

    iget-object v0, v0, Lkhi;->a:Lnou;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeg;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    check-cast v0, Lkhi;

    iget-object v0, v0, Lkhi;->a:Lnou;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeg;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljzi;

    iget-object v1, v1, Ljzi;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    move-object v3, v0

    check-cast v3, Ljzi;

    iget v3, v3, Ljzi;->d:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const-string v0, "VidRecMedRec"

    const-string v4, "PAUSED"

    invoke-static {v3}, Lkba;->k(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is expected but we get "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_5

    :cond_6
    move-object v3, v0

    check-cast v3, Ljzi;

    iput v4, v3, Ljzi;->d:I

    check-cast v0, Ljzi;

    iget-object v0, v0, Ljzi;->b:Ljzd;

    invoke-interface {v0}, Ljzd;->g()V

    monitor-exit v1

    :goto_5
    return-object v2

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v0

    :pswitch_e
    iget-object v0, p0, Lkhk;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeg;

    return-object v0

    :goto_6
    :try_start_16
    move-object v3, v0

    check-cast v3, Lodo;

    iget-object v3, v3, Lodo;->a:Ljava/lang/String;

    if-nez v3, :cond_7

    move-object v1, v0

    check-cast v1, Lodo;

    invoke-virtual {v1}, Lodo;->e()Llpu;

    move-result-object v1

    goto :goto_7

    :cond_7
    move-object v3, v0

    check-cast v3, Lodo;

    invoke-virtual {v3, v1}, Lodo;->c(Z)Llpu;

    move-result-object v1

    :goto_7
    new-instance v3, Lmaf;

    invoke-direct {v3, v1, v2, v2}, Lmaf;-><init>(Llpu;[B[B)V
    :try_end_16
    .catch Lods; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v1

    new-instance v3, Lods;

    sget-object v4, Lodr;->f:Lodr;

    invoke-direct {v3, v4, v1}, Lods;-><init>(Lodr;Ljava/lang/Throwable;)V

    new-instance v1, Lmaf;

    invoke-direct {v1, v3}, Lmaf;-><init>(Lods;)V

    move-object v3, v1

    goto :goto_8

    :catch_6
    move-exception v1

    new-instance v3, Lmaf;

    invoke-direct {v3, v1}, Lmaf;-><init>(Lods;)V

    :goto_8
    monitor-enter v0

    :try_start_17
    move-object v1, v0

    check-cast v1, Lodo;

    iget-object v1, v1, Lodo;->d:Llho;

    if-eqz v1, :cond_e

    iget-object v4, v3, Lmaf;->b:Ljava/lang/Object;

    if-eqz v4, :cond_d

    move-object v5, v4

    check-cast v5, Llpu;

    iget v5, v5, Llpu;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/16 v8, 0x1f7

    if-eq v7, v8, :cond_8

    move-object v6, v2

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    sget-object v6, Lodr;->d:Lodr;

    goto :goto_9

    :cond_9
    move-object v6, v2

    :goto_9
    move-object v7, v4

    check-cast v7, Llpu;

    invoke-static {v7}, Lmbm;->a(Llpu;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad response code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with body "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lods;

    invoke-direct {v7, v6, v5}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lmbo;

    invoke-virtual {v5, v0, v7}, Lmbo;->a(Lodq;Lods;)V

    :cond_a
    move-object v5, v4

    check-cast v5, Llpu;

    iget-object v5, v5, Llpu;->c:Ljava/lang/Object;

    const-string v6, "X-F250-Blob-ID"

    move-object v7, v5

    check-cast v7, Lodl;

    invoke-virtual {v7, v6}, Lodl;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v2, "X-F250-Blob-ID"

    check-cast v5, Lodl;

    invoke-virtual {v5, v2}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    check-cast v4, Lmbo;

    iget-object v4, v4, Lmbo;->d:Lotd;

    new-instance v5, Lmde;

    invoke-direct {v5, v2}, Lmde;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lolp;->N(Lotj;Ljava/lang/Object;)V

    check-cast v1, Lmbo;

    iget-object v1, v1, Lmbo;->d:Lotd;

    invoke-static {v1}, Lolp;->K(Lotj;)V

    goto :goto_a

    :cond_b
    const-string v6, "X-F250-Resource-ID"

    move-object v7, v5

    check-cast v7, Lodl;

    invoke-virtual {v7, v6}, Lodl;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v2, "X-F250-Resource-ID"

    check-cast v5, Lodl;

    invoke-virtual {v5, v2}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    check-cast v4, Lmbo;

    iget-object v4, v4, Lmbo;->d:Lotd;

    new-instance v5, Lmdh;

    invoke-direct {v5, v2}, Lmdh;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lolp;->N(Lotj;Ljava/lang/Object;)V

    check-cast v1, Lmbo;

    iget-object v1, v1, Lmbo;->d:Lotd;

    invoke-static {v1}, Lolp;->K(Lotj;)V

    goto :goto_a

    :cond_c
    check-cast v4, Llpu;

    invoke-static {v4}, Lmbm;->a(Llpu;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid response headers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with body "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lods;

    invoke-direct {v5, v2, v4}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    check-cast v1, Lmbo;

    invoke-virtual {v1, v0, v5}, Lmbo;->a(Lodq;Lods;)V

    goto :goto_a

    :cond_d
    iget-object v2, v3, Lmaf;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lods;

    check-cast v1, Lmbo;

    invoke-virtual {v1, v0, v2}, Lmbo;->a(Lodq;Lods;)V

    :cond_e
    :goto_a
    monitor-exit v0

    return-object v3

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
