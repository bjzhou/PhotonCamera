.class public final synthetic Lirs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lirv;


# direct methods
.method public synthetic constructor <init>(Lirv;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lirs;->a:Lirv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, p0, Lirv;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    nop

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lirv;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    nop

    nop

    nop

    const-string v6, "hawk_05_18_2023_pwcnet_v0.tflite.uncompressed"

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v6, Liqy;->a:Liqy;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    nop

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_0
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Liqy;

    nop

    nop

    nop

    nop

    nop

    iput v7, v8, Liqy;->b:I

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_1
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Liqy;

    nop

    iput-wide v7, v9, Liqy;->c:J

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    nop

    nop

    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_2
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v10, v9

    nop

    check-cast v10, Liqy;

    nop

    nop

    iput-wide v7, v10, Liqy;->d:J

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_3
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Liqy;

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    invoke-static {v8}, La;->E(I)I

    move-result v8

    nop

    nop

    iput v8, v7, Liqy;->e:I

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Liqy;

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Liqy;->a:Liqy;

    nop

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    nop

    nop

    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_4

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_4
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v9, Liqy;

    nop

    nop

    iput v8, v9, Liqy;->b:I

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    nop

    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_5

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_5
    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v10, Liqy;

    nop

    nop

    nop

    nop

    iput-wide v8, v10, Liqy;->c:J

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    nop

    nop

    nop

    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_6
    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    move-object v11, v10

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Liqy;

    nop

    nop

    nop

    iput-wide v8, v11, Liqy;->d:J

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_7

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_7
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Liqy;

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    invoke-static {v9}, La;->E(I)I

    move-result v9

    nop

    nop

    nop

    nop

    iput v9, v8, Liqy;->e:I

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Liqy;

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lcom/google/android/apps/camera/hdrplus/fusion/zoom/jni/NativeFusionZoom;->a(Liqy;)Z

    move-result v6

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lcom/google/android/apps/camera/hdrplus/fusion/zoom/jni/NativeFusionZoom;->a(Liqy;)Z

    move-result v7

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_8
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object p0, p0, Lirs;->a:Lirv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_a

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

    :cond_a
    goto/32 :goto_18

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    :try_start_4
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v5

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v2

    nop

    :try_start_5
    sget-object v5, Lirv;->a:Lsdb;

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    const-string v6, "Failed to initialize Fusion Zoom"

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x73d

    nop

    nop

    invoke-static {v6, v7, v5, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v2

    nop

    nop

    sget-object v5, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    const-string v6, "Unable to open model asset file"

    nop

    nop

    nop

    nop

    const/16 v7, 0x73c

    nop

    nop

    nop

    invoke-static {v6, v7, v5, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_a
    move v2, v4

    nop

    :goto_b
    iget-object v5, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    const-string v6, "FusionZoomController#init"

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v5, p0, Lirv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    if-eqz v2, :cond_b

    nop

    const-string v2, "ZGV2aWNlX2tleQ=="

    nop

    nop

    nop

    invoke-static {v2}, Lcom/a;->zb(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p0}, Lirv;->f()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v2, v6, v1}, Lcom/google/android/apps/camera/hdrplus/fusion/zoom/jni/NativeFusionZoom;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    move v2, v3

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_b
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_c

    nop

    iget-object v1, p0, Lirv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    move v4, v3

    nop

    nop

    :cond_c
    iput-boolean v4, p0, Lirv;->h:Z

    nop

    nop

    nop

    iget-object v1, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object p0, p0, Lirv;->b:Loxv;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {p0, v1}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v6, :cond_d

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_d
    :try_start_6
    sget-object v6, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v8, 0x73f

    nop

    nop

    nop

    nop

    invoke-interface {v6, v8}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    const-string v8, "Unable to load model into SuperResProcessor"

    nop

    invoke-interface {v6, v8}, Lscz;->s(Ljava/lang/String;)V

    :goto_e
    if-nez v7, :cond_e

    nop

    sget-object v6, Lirv;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    const/16 v7, 0x73e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    const-string v7, "Unable to load model into FlowProcessor"

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->s(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v7, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x14

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    :catchall_2
    move-exception v5

    nop

    :try_start_7
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v6

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lirv;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    if-nez v5, :cond_10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_10
    :try_start_8
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v7, v4

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_11
    :try_start_9
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_12

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

    :cond_12
    :try_start_a
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_1e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    :goto_22
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_13

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

    :cond_13
    :try_start_b
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v0

    nop

    nop

    :try_start_c
    iget-object v1, p0, Lirv;->j:Lhoh;

    nop

    nop

    sget-object v2, Lhml;->B:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lirv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_14

    nop

    nop

    iget-boolean v2, p0, Lirv;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 v1, 0x738

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Already initialized."

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_14
    iget-object v2, p0, Lirv;->i:Llks;

    nop

    nop

    invoke-virtual {v2}, Llks;->a()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_15

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lirv;->d:Lpdf;

    nop

    const-string v3, "PortraitSegmenter#init"

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lirv;->i:Llks;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Llks;->b()V

    iget-object v2, p0, Lirv;->d:Lpdf;

    nop

    invoke-interface {v2}, Lpdf;->g()V

    :cond_15
    iget-object v2, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "FusionZoomController#loadModelAsset"

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lirv;->j:Lhoh;

    nop

    nop

    sget-object v3, Lhml;->S:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    if-eqz v2, :cond_16

    nop

    const-string v2, "hawk_full_fov_custom-op.tflite.uncompressed"

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_16
    if-eqz v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    const-string v2, "hawk_06_15_2022_v1_custom-op.tflite.uncompressed"

    nop

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_17
    const-string v2, "hawk_06_15_2022_v1.tflite.uncompressed"

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v5, :cond_18

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_18
    :try_start_d
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_29
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method
