.class public final synthetic Lipg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lipi;


# direct methods
.method public synthetic constructor <init>(Lipi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lipg;->a:Lipi;

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

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    goto/32 :goto_25

    nop

    nop

    :goto_0
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v2, v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lipg;->a:Lipi;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    :goto_c
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v6

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    :try_start_4
    sget-object v6, Lipi;->a:Lsdb;

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    sget-object v7, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    const-string v8, "FalconController"

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7, v8}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x70a

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

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

    invoke-interface {v6, v7}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    :catchall_3
    move-exception v2

    nop

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v3

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catch_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    sget-object v3, Lipi;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v6, Lsed;->a:Lsdr;

    nop

    const-string v7, "FalconController"

    nop

    nop

    nop

    invoke-interface {v3, v6, v7}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x709

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v3, "Failed to initialize Fusion Deblur"

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_13

    nop

    nop

    nop

    :catch_1
    move-exception v2

    nop

    nop

    nop

    sget-object v3, Lipi;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    sget-object v6, Lsed;->a:Lsdr;

    nop

    const-string v7, "FalconController"

    nop

    invoke-interface {v3, v6, v7}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const/16 v3, 0x708

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Unable to open Fusion Deblur model asset file"

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :cond_4
    :goto_13
    move v2, v5

    nop

    nop

    :goto_14
    iget-object v3, p0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    nop

    const-string v6, "DeblurFusionController#init"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, p0, Lipi;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    const-string v2, "ZGV2aWNlX2tleQ=="

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcom/a;->zb(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lipi;->f()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v2, v6, v5, v1}, Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    move v1, v4

    nop

    goto :goto_15

    nop

    nop

    :cond_5
    move v1, v5

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lipi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, p0, Lipi;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lipi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    const-string v2, "FalconController"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const/16 v1, 0x701

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Failed to initialize DeblurFusionController."

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_16

    nop

    nop

    :cond_6
    iget-object p0, p0, Lipi;->h:Loxv;

    nop

    nop

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {p0, v1}, Loxv;->a(Ljava/lang/Object;)V

    :goto_16
    monitor-exit v0

    nop

    return-void

    nop

    :catchall_4
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V

    :goto_18
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    :goto_19
    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    sget-object v1, Lhml;->a:Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Lipi;->k:Lhoh;

    nop

    nop

    sget-object v2, Lhml;->z:Lhmn;

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

    sget-object v2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    iget-object v2, p0, Lipi;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    if-eqz v2, :cond_9

    nop

    iget-object v2, p0, Lipi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_9

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_9
    iget-object v2, p0, Lipi;->b:Llle;

    nop

    nop

    nop

    invoke-interface {v2}, Llle;->a()J

    move-result-wide v2

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_a

    nop

    iget-object v2, p0, Lipi;->c:Lpdf;

    nop

    nop

    const-string v3, "PortraitSegmenter#init"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lipi;->b:Llle;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Llle;->b()V

    iget-object v2, p0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    :cond_a
    iget-object v2, p0, Lipi;->c:Lpdf;

    nop

    nop

    nop

    nop

    const-string v3, "DeblurFusionController#loadModelIntoCache"

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    nop

    nop

    const-string v2, "gyrfalcon-p23.tflite.uncompressed"

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    const-string v2, "deblur_04_20_2023_v0.tflite.uncompressed"

    nop

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->SxQxQX:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    const/4 v5, 0x0

    nop

    :try_start_9
    iget-object v6, p0, Lipi;->i:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v6, p0, Lipi;->i:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    nop

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    sget-object v6, Lipx;->a:Lipx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    nop

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_c
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Lipx;

    nop

    nop

    iput v7, v8, Lipx;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    nop

    nop

    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    if-nez v9, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_d
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v9, Lipx;

    nop

    nop

    nop

    nop

    nop

    iput-wide v7, v9, Lipx;->c:J

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

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

    nop

    nop

    nop

    if-nez v9, :cond_e

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_e
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    check-cast v10, Lipx;

    nop

    nop

    nop

    nop

    iput-wide v7, v10, Lipx;->d:J

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v7

    nop

    if-nez v7, :cond_f

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_f
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Lipx;

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

    nop

    nop

    iput v8, v7, Lipx;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lipx;

    nop

    nop

    nop

    nop

    sget-object v7, Lipx;->a:Lipx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    nop

    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_10

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_10
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v9, Lipx;

    nop

    nop

    nop

    iput v8, v9, Lipx;->b:I

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    nop

    nop

    nop

    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-nez v10, :cond_11

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_11
    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v10, Lipx;

    nop

    nop

    iput-wide v8, v10, Lipx;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    nop

    nop

    nop

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

    nop

    if-nez v10, :cond_12

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_12
    iget-object v10, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v11, v10

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Lipx;

    nop

    nop

    nop

    nop

    iput-wide v8, v11, Lipx;->d:J

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_13

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_13
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lipx;

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    invoke-static {v9}, La;->E(I)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    iput v9, v8, Lipx;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v7

    nop

    check-cast v7, Lipx;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;->a(Lipx;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;->a(Lipx;)Z

    move-result v7

    nop

    nop

    if-nez v6, :cond_17

    nop

    nop

    sget-object v6, Lipi;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    sget-object v7, Lsed;->a:Lsdr;

    nop

    const-string v8, "FalconController"

    nop

    nop

    invoke-interface {v6, v7, v8}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v6

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    const/16 v7, 0x70b

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    const-string v7, "Unable to load model into FusionProcessor"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->s(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_14
    goto/32 :goto_2

    nop

    :goto_20
    if-nez v3, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_15
    :try_start_c
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lipi;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_16
    :try_start_d
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_24
    goto/32 :goto_1

    nop

    nop

    :goto_25
    const v0, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
