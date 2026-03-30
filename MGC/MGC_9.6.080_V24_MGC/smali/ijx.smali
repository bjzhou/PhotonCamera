.class public final synthetic Lijx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Lpdf;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Ltxm;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpdf;Ltxm;Ltxm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lijx;->a:Lpdf;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lijx;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lijx;->d:Landroid/content/Context;

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

    :goto_4
    iput-object p2, p0, Lijx;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lijx;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lijx;->c:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lijx;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 21

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

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

    :goto_2
    iget-object v3, v0, Lijx;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "Pecan#initialize"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4
    const-string v2, "InitializePecanFromOpenFile"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    :try_start_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    goto/32 :goto_3a

    nop

    nop

    :goto_7
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_a
    check-cast v2, Lcom/google/googlex/gcam/Gcam;

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

    :goto_b
    const-string v3, "Failed to initialize Pecan"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v6, v0, Lijx;->e:Ljava/lang/String;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lijx;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_31

    nop

    nop

    :goto_17
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, v0, Lijx;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Lika;->b()Ltbq;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    iget-object v2, v0, Lijx;->b:Ltxm;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lijx;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-static {v5}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    nop

    move-object v5, v8

    nop

    nop

    goto :goto_1e

    nop

    nop

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1e
    :try_start_8
    invoke-static {v4}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_5

    nop

    nop

    nop

    move-object v4, v8

    nop

    nop

    nop

    nop

    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_33

    nop

    nop

    :goto_1f
    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_6
    :try_start_9
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v5, v0, Lijx;->f:Ljava/lang/String;

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

    :goto_22
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    goto/16 :goto_3d

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_24
    const-string v3, "Unable to get model asset file"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    move-object v2, v0

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

    :goto_26
    move-object v2, v0

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

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v2, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    :goto_2a
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

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

    :goto_2b
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v3, Lika;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v1, Lgit;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_32

    nop

    :goto_2f
    goto/32 :goto_22

    nop

    nop

    :goto_30
    goto/16 :goto_8

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :goto_32
    goto/32 :goto_39

    nop

    nop

    :goto_33
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    :try_start_a
    new-instance v0, Lcom/google/googlex/gcam/TfliteFileData;

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v10

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    move-object v9, v0

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v14}, Lcom/google/googlex/gcam/TfliteFileData;-><init>(IJJ)V

    if-nez v5, :cond_8

    nop

    move-object v7, v8

    nop

    nop

    goto :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_8
    new-instance v7, Lcom/google/googlex/gcam/TfliteFileData;

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v16

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v17

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v19

    nop

    nop

    nop

    nop

    move-object v15, v7

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v15 .. v20}, Lcom/google/googlex/gcam/TfliteFileData;-><init>(IJJ)V

    :goto_35
    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_9
    new-instance v8, Lcom/google/googlex/gcam/TfliteFileData;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    nop

    nop

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    nop

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v14}, Lcom/google/googlex/gcam/TfliteFileData;-><init>(IJJ)V

    :goto_36
    iget-wide v10, v0, Lcom/google/googlex/gcam/TfliteFileData;->a:J

    nop

    nop

    const-wide/16 v12, 0x0

    nop

    nop

    nop

    nop

    if-nez v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    move-wide v14, v12

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    :cond_a
    iget-wide v14, v7, Lcom/google/googlex/gcam/TfliteFileData;->a:J

    nop

    :goto_37
    if-nez v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    move-wide v7, v12

    nop

    nop

    nop

    nop

    goto :goto_38

    nop

    nop

    nop

    nop

    :cond_b
    iget-wide v7, v8, Lcom/google/googlex/gcam/TfliteFileData;->a:J

    nop

    :goto_38
    invoke-static {v2}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v16

    nop

    nop

    nop

    nop

    nop

    move-object v9, v3

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    move-wide v12, v14

    nop

    nop

    move-wide v14, v7

    nop

    invoke-virtual/range {v9 .. v17}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeInitializePecanFromOpenFile(JJJJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_c
    :try_start_b
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3b
    const-string v2, "InitializePecanFromOpenFile"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    move-object v3, v0

    nop

    nop

    :try_start_c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_8

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

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method
