.class public final synthetic Leil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leio;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Leio;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leil;->a:Leio;

    iput p2, p0, Leil;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Leil;->a:Leio;

    iget v7, v1, Leil;->b:I

    iget-object v0, v2, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v9, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v2, Leio;->I:Lehx;

    invoke-virtual {v0}, Lehx;->b()Ljava/lang/String;

    iget-object v0, v2, Leio;->j:Lkbc;

    const-string v4, "record#prepareToRecord"

    invoke-interface {v0, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v2, Leio;->b:Lekg;

    iget-object v4, v2, Leio;->h:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v2, Leio;->I:Lehx;

    invoke-virtual {v5}, Lehx;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lekg;->l:Lehu;

    new-instance v8, Leer;

    const/16 v10, 0x12

    invoke-direct {v8, v0, v10}, Leer;-><init>(Lekg;I)V

    invoke-virtual {v6, v8}, Lehu;->b(Ljava/lang/Runnable;)V

    iget-object v6, v0, Lekg;->e:Lekh;

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_0

    sget-object v0, Lekg;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v3, Lnbk;->a:Lnbc;

    const-string v4, "ImaxCaptureModule"

    invoke-interface {v0, v3, v4}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v3, "No devicePoseManger"

    const/16 v4, 0x60d

    invoke-static {v0, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_6

    :cond_0
    iget-object v6, v0, Lekg;->c:Leke;

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v0, Lejy;

    invoke-direct {v0}, Lejy;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Leke;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v11, "%s"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x60c

    invoke-static {v4, v11, v12, v13, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    move-object v4, v8

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    if-eqz v4, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    new-instance v11, Leku;

    invoke-direct {v11, v5, v0}, Leku;-><init>(Ljava/lang/String;I)V

    iput-boolean v10, v6, Leke;->e:Z

    if-eqz v4, :cond_7

    new-instance v5, Lekt;

    invoke-direct {v5, v4, v11}, Lekt;-><init>(Lekq;Leku;)V

    iget-object v0, v5, Lekt;->b:Lekq;

    if-ne v0, v4, :cond_6

    new-instance v12, Lekb;

    const v0, 0xac44

    const/16 v13, 0x10

    invoke-static {v0, v13, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    add-int v18, v0, v0

    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v14, 0x5

    const v15, 0xac44

    const/16 v16, 0x10

    const/16 v17, 0x2

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v3, Leka;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v13, "%s"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x606

    invoke-static {v3, v13, v14, v15, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-eq v3, v9, :cond_4

    :cond_3
    sget-object v0, Leka;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v3, "Audio recorder could not be initialized"

    const/16 v13, 0x605

    invoke-static {v0, v3, v13}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object v0, v8

    :cond_4
    invoke-direct {v12, v4, v0}, Lekb;-><init>(Lejy;Landroid/media/AudioRecord;)V

    invoke-virtual {v5}, Lekt;->b()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v8

    goto :goto_3

    :cond_5
    new-instance v0, Leka;

    invoke-direct {v0, v5, v12}, Leka;-><init>(Lekt;Lekb;)V

    :goto_3
    iput-object v0, v6, Leke;->d:Leka;

    iget-object v0, v6, Leke;->d:Leka;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The drainer does not use the same encoder as the recorder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    iget-object v0, v6, Leke;->c:Lekw;

    if-eqz v0, :cond_a

    new-instance v3, Lekt;

    invoke-direct {v3, v0, v11}, Lekt;-><init>(Lekq;Leku;)V

    iget-object v4, v3, Lekt;->b:Lekq;

    if-ne v4, v0, :cond_9

    invoke-virtual {v3}, Lekt;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lekz;

    invoke-direct {v4, v0, v3}, Lekz;-><init>(Lekw;Lekt;)V

    goto :goto_5

    :cond_8
    move-object v4, v8

    :goto_5
    iput-object v4, v6, Leke;->b:Lekz;

    iget-object v0, v6, Leke;->b:Lekz;

    if-nez v0, :cond_a

    iget-object v0, v6, Leke;->d:Leka;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Leka;->a()V

    iput-object v8, v6, Leke;->d:Leka;

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The drainer does not use the same encoder as the recorder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    iget-object v0, v2, Leio;->o:Leji;

    iget-object v3, v2, Leio;->b:Lekg;

    iget-object v3, v3, Lekg;->d:Lejt;

    invoke-interface {v3}, Lejt;->getPreviewAsTexture()Lcom/google/android/libraries/vision/opengl/Texture;

    move-result-object v3

    iget-object v4, v0, Leji;->k:Leiv;

    iget v5, v0, Leji;->c:I

    iget v5, v0, Leji;->b:I

    iget-object v4, v4, Leiv;->a:Ldhi;

    sget-object v5, Ldhr;->a:Ldhj;

    invoke-interface {v4}, Ldhi;->c()V

    iget-object v4, v0, Leji;->j:Leiz;

    iget-object v5, v4, Leiz;->a:Lelh;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lelh;->a()V

    iput-object v8, v4, Leiz;->a:Lelh;

    :cond_b
    new-instance v5, Lelh;

    invoke-direct {v5}, Lelh;-><init>()V

    iput-object v5, v4, Leiz;->a:Lelh;

    iget-object v5, v4, Leiz;->a:Lelh;

    iget-object v4, v4, Leiz;->b:Leir;

    iget v6, v4, Leir;->j:I

    iget v4, v4, Leir;->k:I

    sget-object v8, Leiy;->a:[F

    iput-object v3, v5, Lelh;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    const/16 v8, 0x2901

    iput v8, v5, Lelh;->c:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v6, v6

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Lelh;->c(FF)V

    sget-object v4, Leiy;->a:[F

    invoke-static {v4}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v5, Lelh;->a:Ljava/nio/FloatBuffer;

    iget-object v0, v0, Leji;->i:Leir;

    iput-object v3, v0, Leir;->o:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v0, v2, Leio;->j:Lkbc;

    const-string v3, "record#startCapture"

    invoke-interface {v0, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v11, v2, Leio;->b:Lekg;

    iget-object v0, v11, Lekg;->b:Leki;

    invoke-virtual {v0}, Leki;->b()V

    iget-object v0, v11, Lekg;->c:Leke;

    iget-object v3, v0, Leke;->d:Leka;

    if-eqz v3, :cond_c

    iget-object v3, v3, Leka;->b:Lekb;

    iput-boolean v9, v3, Lekb;->b:Z

    invoke-virtual {v3}, Lekb;->start()V

    :cond_c
    iget-object v0, v0, Leke;->b:Lekz;

    if-eqz v0, :cond_d

    iput-boolean v9, v0, Lekz;->f:Z

    :cond_d
    iget-object v3, v11, Lekg;->d:Lejt;

    iget-object v0, v11, Lekg;->h:Lekc;

    iget v4, v0, Lekc;->d:F

    iget v5, v0, Lekc;->c:I

    iget-boolean v0, v0, Lekc;->e:Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lejt;->setMetaData(FIZIZ)V

    iget-object v0, v11, Lekg;->d:Lejt;

    invoke-interface {v0}, Lejt;->startCapture()V

    monitor-enter v11

    :try_start_2
    iput-boolean v9, v11, Lekg;->f:Z

    iput v10, v11, Lekg;->k:I

    const-wide v3, 0x47efffffe0000000L    # 3.4028234663852886E38

    iput-wide v3, v11, Lekg;->j:D

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v2, Leio;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v2, Leio;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, v2, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v2, Leio;->f:Leik;

    iput-object v2, v0, Leik;->s:Leii;

    iget-object v3, v0, Leik;->b:Lehn;

    iput-boolean v10, v3, Lehn;->c:Z

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    iput-wide v4, v3, Lehn;->b:D

    iput-wide v4, v3, Lehn;->a:D

    iput-boolean v9, v0, Leik;->i:Z

    invoke-virtual {v0, v10}, Leik;->i(Z)V

    const/4 v3, 0x0

    iput v3, v0, Leik;->d:F

    iget-object v3, v0, Leik;->j:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Leik;->m:J

    iget-wide v3, v0, Leik;->c:D

    iput-wide v3, v0, Leik;->k:D

    iget-object v3, v0, Leik;->l:Lima;

    invoke-virtual {v3}, Lima;->b()V

    iget-object v0, v0, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v2, Leio;->k:Liff;

    invoke-interface {v0}, Liff;->K()V

    iget-object v0, v2, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_e
    return-void
.end method
