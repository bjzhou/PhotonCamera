.class public final synthetic Lhhn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhhr;


# direct methods
.method public synthetic constructor <init>(Lhhr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhn;->a:Lhhr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v2, v1, Lhhn;->a:Lhhr;

    iget-object v0, v2, Lhhr;->i:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lhhr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v3, "Model assets are purged! Try to extract model assets again."

    const/16 v4, 0xe36

    invoke-static {v0, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v2}, Lhhr;->c()V

    :cond_0
    new-instance v0, Lmov;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lmov;-><init>([B)V

    const/4 v4, 0x1

    iput v4, v0, Lmov;->l:I

    invoke-virtual {v0}, Lmov;->d()V

    iput v4, v0, Lmov;->j:I

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v5

    iput-object v5, v0, Lmov;->b:Lj$/util/Optional;

    iget-byte v5, v0, Lmov;->h:B

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iput-byte v5, v0, Lmov;->h:B

    invoke-virtual {v0, v4}, Lmov;->c(Z)V

    const/high16 v5, 0x467a0000    # 16000.0f

    invoke-virtual {v0, v5}, Lmov;->b(F)V

    invoke-virtual {v0, v4}, Lmov;->a(I)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v5

    iput-object v5, v0, Lmov;->a:Lj$/util/Optional;

    iput v4, v0, Lmov;->k:I

    const/4 v5, 0x2

    iput v5, v0, Lmov;->l:I

    invoke-virtual {v0}, Lmov;->d()V

    iget-object v6, v2, Lhhr;->b:Ldhi;

    sget-object v7, Ldif;->d:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lmov;->c(Z)V

    iget-object v6, v2, Lhhr;->i:Lj$/nio/file/Path;

    if-eqz v6, :cond_1b

    iput-object v6, v0, Lmov;->d:Lj$/nio/file/Path;

    iget-object v6, v2, Lhhr;->k:Linb;

    invoke-static {v6}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v6

    iput-object v6, v0, Lmov;->a:Lj$/util/Optional;

    iget-object v6, v2, Lhhr;->c:Lnow;

    if-eqz v6, :cond_1a

    iput-object v6, v0, Lmov;->c:Lnow;

    iget-object v6, v2, Lhhr;->j:Lhhz;

    iget v6, v6, Lhhz;->a:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lmov;->b(F)V

    iget-object v6, v2, Lhhr;->j:Lhhz;

    iget v6, v6, Lhhz;->b:I

    invoke-virtual {v0, v6}, Lmov;->a(I)V

    iget-byte v6, v0, Lmov;->h:B

    const/16 v7, 0xf

    if-ne v6, v7, :cond_f

    iget v9, v0, Lmov;->l:I

    if-eqz v9, :cond_f

    iget v10, v0, Lmov;->i:I

    if-eqz v10, :cond_f

    iget v6, v0, Lmov;->j:I

    if-eqz v6, :cond_f

    iget-object v13, v0, Lmov;->c:Lnow;

    if-eqz v13, :cond_f

    iget-object v14, v0, Lmov;->d:Lj$/nio/file/Path;

    if-eqz v14, :cond_f

    iget v6, v0, Lmov;->k:I

    if-nez v6, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v6, Lmow;

    iget-object v11, v0, Lmov;->a:Lj$/util/Optional;

    iget-object v12, v0, Lmov;->b:Lj$/util/Optional;

    iget v15, v0, Lmov;->e:I

    iget v7, v0, Lmov;->f:F

    iget-boolean v0, v0, Lmov;->g:Z

    move-object v8, v6

    move/from16 v16, v7

    move/from16 v17, v0

    invoke-direct/range {v8 .. v17}, Lmow;-><init>(IILj$/util/Optional;Lj$/util/Optional;Lnow;Lj$/nio/file/Path;IFZ)V

    iget v0, v6, Lmow;->i:I

    const/4 v7, 0x0

    if-ne v0, v4, :cond_3

    iget-object v0, v6, Lmow;->a:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    const-string v8, "Callback must be set."

    invoke-static {v0, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    iget v0, v6, Lmow;->h:I

    if-ne v0, v4, :cond_5

    iget-object v0, v6, Lmow;->b:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_1
    const-string v8, "The \'raw audio interface type\' has been set to \'input stream\', but input stream wasn\'t provided."

    invoke-static {v0, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v6, Lmow;->d:Lj$/nio/file/Path;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-string v8, "Model directory must be set."

    invoke-static {v0, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v2, Lhhr;->f:Lkbc;

    const-string v8, "SEController#createInstance"

    invoke-interface {v0, v8}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lmop;->a:Lj$/time/Duration;

    new-instance v11, Lmpf;

    invoke-direct {v11}, Lmpf;-><init>()V

    const-string v0, "SpeechEnhancerParams must be set before calling build()."

    invoke-static {v4, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lmos;

    iget v8, v6, Lmow;->i:I

    iget-object v9, v6, Lmow;->a:Lj$/util/Optional;

    invoke-direct {v0, v8, v9}, Lmos;-><init>(ILj$/util/Optional;)V

    iget v8, v6, Lmow;->j:I

    iget-object v14, v6, Lmow;->d:Lj$/nio/file/Path;

    iget v15, v6, Lmow;->e:I

    iget v9, v6, Lmow;->f:F

    iget-boolean v10, v6, Lmow;->g:Z

    if-eq v8, v5, :cond_7

    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    const/4 v13, 0x1

    :goto_3
    if-eqz v8, :cond_9

    const-string v8, "Avenh model directory must be set before calling build()."

    if-eqz v14, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    :goto_4
    invoke-static {v7, v8}, Lmoz;->q(ZLjava/lang/Object;)V

    const-string v7, "Callback must be set before calling build()."

    invoke-static {v4, v7}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v7, Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v12, v7

    move/from16 v16, v9

    move-object/from16 v17, v0

    move/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;-><init>(ZLj$/nio/file/Path;IFLmox;ZZLmoz;)V

    invoke-interface {v7}, Lmoy;->initialize()V

    invoke-interface {v7}, Lmoy;->getSpeechEnhancerModelInfo()Lmpe;

    move-result-object v14

    new-instance v10, Llhz;

    invoke-direct {v10, v7}, Llhz;-><init>(Lmoy;)V

    invoke-static {}, Lmph;->a()Lmpg;

    move-result-object v8

    iget v9, v14, Lmpe;->a:I

    invoke-virtual {v8, v9}, Lmpg;->b(I)V

    invoke-virtual {v8}, Lmpg;->a()Lmph;

    move-result-object v9

    invoke-static {}, Lmph;->a()Lmpg;

    move-result-object v8

    invoke-virtual {v8}, Lmpg;->a()Lmph;

    new-instance v8, Lmpf;

    invoke-direct {v8}, Lmpf;-><init>()V

    const-string v8, "Callback must be set before calling build()."

    invoke-static {v4, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v17, Lmpk;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v13}, Lmpk;-><init>(Lmph;Llhz;Lmpj;[B[B)V

    sget-object v4, Lmop;->a:Lj$/time/Duration;

    invoke-virtual {v4}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v8

    long-to-int v4, v8

    iget v8, v14, Lmpe;->b:F

    float-to-int v8, v8

    mul-int v4, v4, v8

    iget v8, v14, Lmpe;->d:I

    mul-int v4, v4, v8

    iget v8, v14, Lmpe;->c:I

    mul-int v4, v4, v8

    new-instance v8, Ljava/io/PipedInputStream;

    invoke-direct {v8, v4}, Ljava/io/PipedInputStream;-><init>(I)V

    new-instance v4, Ljava/io/PipedOutputStream;

    invoke-direct {v4, v8}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v9

    iput-object v9, v0, Lmos;->a:Lj$/util/Optional;

    new-instance v0, Lmou;

    move-object v15, v0

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v20}, Lmou;-><init>(Lmow;Lmpk;Ljava/io/PipedInputStream;Ljava/io/PipedOutputStream;Lmoy;)V

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_5

    :cond_9
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v4, Lmoo;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v6, "Failed to create SpeechEnhancerImpl instance."

    const/16 v7, 0x11d8

    invoke-static {v4, v6, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljew;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmon;

    invoke-direct {v4, v0}, Ljew;-><init>(Lmon;)V

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_6

    :cond_a
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_6
    iget-object v4, v2, Lhhr;->f:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iput-object v0, v2, Lhhr;->l:Ljew;

    :try_start_1
    iget-object v0, v2, Lhhr;->l:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmon;->b()V

    iget-object v0, v2, Lhhr;->l:Ljew;

    iget-object v4, v2, Lhhr;->j:Lhhz;

    iget-wide v6, v4, Lhhz;->c:D

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lmon;->e(D)V

    iget-object v0, v2, Lhhr;->j:Lhhz;

    iget v0, v0, Lhhz;->d:I

    if-eqz v0, :cond_c

    if-ne v0, v5, :cond_b

    iget-object v0, v2, Lhhr;->l:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmon;->h()V

    goto :goto_7

    :cond_b
    iget-object v0, v2, Lhhr;->b:Ldhi;

    invoke-interface {v0}, Ldhi;->e()V

    goto :goto_7

    :cond_c
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    sget-object v3, Lhhr;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "Initialize speech enhancer failed."

    const/16 v5, 0xe35

    invoke-static {v3, v4, v5, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_7
    iget-object v3, v2, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    sget-object v0, Lhhq;->c:Lhhq;

    iput-object v0, v2, Lhhr;->h:Lhhq;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v4, v2, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v0, v2, Lhhr;->h:Lhhq;

    sget-object v3, Lhhq;->c:Lhhq;

    invoke-virtual {v0, v3}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Lhhr;->l:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lmon;->f()V

    sget-object v0, Lhhq;->d:Lhhq;

    iput-object v0, v2, Lhhr;->h:Lhhq;

    :cond_d
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_e
    new-instance v0, Lmrr;

    const-string v2, "Create speech enhancer instance failed."

    invoke-direct {v0, v2}, Lmrr;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lmov;->l:I

    if-nez v3, :cond_10

    const-string v3, " speechEnhancerMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget v3, v0, Lmov;->i:I

    if-nez v3, :cond_11

    const-string v3, " rawAudioInterfaceType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget v3, v0, Lmov;->j:I

    if-nez v3, :cond_12

    const-string v3, " processedAudioInterfaceType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v3, v0, Lmov;->c:Lnow;

    if-nez v3, :cond_13

    const-string v3, " listeningExecutorService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v3, v0, Lmov;->d:Lj$/nio/file/Path;

    if-nez v3, :cond_14

    const-string v3, " modelDirectory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-byte v3, v0, Lmov;->h:B

    and-int/2addr v3, v4

    if-nez v3, :cond_15

    const-string v3, " numberOfChannels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-byte v3, v0, Lmov;->h:B

    and-int/2addr v3, v5

    if-nez v3, :cond_16

    const-string v3, " sampleRate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-byte v3, v0, Lmov;->h:B

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_17

    const-string v3, " skipInitGoogle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-byte v3, v0, Lmov;->h:B

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_18

    const-string v3, " useTpu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget v0, v0, Lmov;->k:I

    if-nez v0, :cond_19

    const-string v0, " environmentType"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null listeningExecutorService"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null modelDirectory"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
