.class public final synthetic Lgbo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgbq;

.field public final synthetic b:Lows;


# direct methods
.method public synthetic constructor <init>(Lgbq;Lows;)V
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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgbo;->b:Lows;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgbo;->a:Lgbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const-string v1, "Could not init processor"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

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

    :goto_3
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgbo;->a:Lgbq;

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

    :goto_5
    goto :goto_6

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_1
    invoke-virtual {v4}, Lpde;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lpde;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ltbl;

    nop

    iget-boolean v1, v1, Lgcf;->e:Z

    nop

    invoke-static {v3}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Lgce;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v1, v3}, Lgce;-><init>(Ltbl;ZLryb;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v1, v0, Lgbq;->h:Lpdf;

    nop

    nop

    const-string v2, "processor#initProcessor"

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lgbq;->d:Lszn;

    nop

    nop

    sget-object v2, Ltau;->a:Ltau;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v3, v4, Lgce;->a:Ltbl;

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v5, Ltau;

    nop

    nop

    nop

    nop

    iput-object v3, v5, Ltau;->c:Ltbl;

    nop

    nop

    nop

    nop

    nop

    iget v3, v5, Ltau;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x1

    nop

    nop

    iput v3, v5, Ltau;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lgbq;->i:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/io/File;

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_3
    const-string v3, ""

    nop

    :goto_c
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_4

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_4
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v6, v5

    nop

    check-cast v6, Ltau;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Ltau;->b:I

    nop

    nop

    or-int/2addr v7, v8

    nop

    iput v7, v6, Ltau;->b:I

    nop

    nop

    nop

    iput-object v3, v6, Ltau;->d:Ljava/lang/String;

    nop

    nop

    iget-boolean v3, v4, Lgce;->b:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_5

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_5
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Ltau;

    nop

    nop

    nop

    nop

    iget v6, v5, Ltau;->b:I

    nop

    nop

    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    iput v6, v5, Ltau;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, v5, Ltau;->e:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    check-cast v2, Ltau;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lszn;->b:Ltav;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltis;->h()[B

    move-result-object v2

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->createImpl([B)[B

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a([B)Ltbf;

    move-result-object v2

    nop

    iget v3, v2, Ltbf;->d:I

    nop

    invoke-static {v3}, La;->P(I)I

    move-result v3

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    if-ne v3, v8, :cond_8

    nop

    nop

    nop

    iget v3, v2, Ltbf;->b:I

    nop

    nop

    if-ne v3, v5, :cond_7

    nop

    iget-object v2, v2, Ltbf;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Ltax;

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    sget-object v2, Ltax;->a:Ltax;

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v2, v2, Ltax;->b:J

    nop

    nop

    nop

    check-cast v1, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    iput-wide v2, v1, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_e
    iget-object v1, v0, Lgbq;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, v0, Lgbq;->h:Lpdf;

    nop

    const-string v2, "#setTrackingSession"

    nop

    invoke-interface {v1, v2}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v1

    nop

    nop

    iget-object v2, v0, Lgbq;->e:Loyd;

    nop

    invoke-static {v2}, Loxz;->a(Loyd;)Loyd;

    move-result-object v2

    nop

    nop

    new-instance v3, Lfvy;

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    invoke-direct {v3, v0, v1, v5, v6}, Lfvy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v0, v0, Lgbq;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v4}, Lgce;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0xd1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    nop

    const/4 v1, 0x0

    nop

    :goto_15
    if-ge v1, v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/io/Closeable;

    nop

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_9
    throw p0

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lgbq;->a:Lsdb;

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

    :goto_19
    iget-object p0, p0, Lgbo;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    iget-object v1, v0, Lgbq;->g:Lgcf;

    nop

    nop

    nop

    sget-object v2, Ltbl;->a:Ltbl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

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

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    new-instance v4, Lpde;

    nop

    nop

    iget-object v5, v1, Lgcf;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v6, "AllInAssetManager#openModelAssets"

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5, v6}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    iget-boolean v5, v1, Lgcf;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_a

    nop

    nop

    nop

    sget-object v5, Lgcf;->a:Lryh;

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    :cond_a
    sget-object v5, Lgcf;->b:Lryh;

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v5}, Lryh;->t()Lryy;

    move-result-object v6

    nop

    invoke-virtual {v6}, Lryy;->em()Lscp;

    move-result-object v6

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Ltbh;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lgcf;->c:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    nop

    invoke-virtual {v5, v7}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljava/lang/String;

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    nop

    nop

    nop

    iget v7, v7, Ltbh;->O:I

    nop

    nop

    nop

    sget-object v10, Ltbi;->a:Ltbi;

    nop

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    nop

    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    if-nez v12, :cond_b

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_b
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ltbi;

    nop

    nop

    nop

    iget v13, v12, Ltbi;->b:I

    nop

    or-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    iput v13, v12, Ltbi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v11, v12, Ltbi;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    nop

    nop

    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    if-nez v13, :cond_c

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_c
    iget-object v13, v10, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v13, Ltbi;

    nop

    nop

    iget v14, v13, Ltbi;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v8, v14

    nop

    nop

    nop

    nop

    iput v8, v13, Ltbi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltbi;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    nop

    nop

    nop

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_d

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_d
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v8, Ltbi;

    nop

    iget v13, v8, Ltbi;->b:I

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v13, v8, Ltbi;->b:I

    nop

    nop

    nop

    iput-wide v11, v8, Ltbi;->e:J

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Ltbi;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_e
    iget-object v10, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v10, Ltbl;

    nop

    nop

    iget-object v11, v10, Ltbl;->b:Ltll;

    nop

    nop

    nop

    iget-boolean v12, v11, Ltll;->b:Z

    nop

    nop

    if-nez v12, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltll;->a()Ltll;

    move-result-object v11

    nop

    nop

    nop

    nop

    iput-object v11, v10, Ltbl;->b:Ltll;

    nop

    nop

    nop

    nop

    nop

    :cond_f
    iget-object v10, v10, Ltbl;->b:Ltll;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :catchall_3
    move-exception p0

    nop

    :try_start_b
    invoke-virtual {v4}, Lgce;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
