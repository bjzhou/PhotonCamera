.class public final synthetic Lmhv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmhy;


# direct methods
.method public synthetic constructor <init>(Lmhy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmhv;->a:Lmhy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 24

    goto/32 :goto_a4

    nop

    nop

    :goto_0
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v7, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2
    iget-object v3, v2, Lmhy;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c8

    nop

    nop

    :goto_4
    iget-wide v3, v2, Lrrc;->c:J

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5
    iget v0, v1, Lrrd;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8
    iget v15, v2, Lrrc;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v21, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, v2, Lrrc;->f:Lsuk;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_c
    int-to-byte v7, v7

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iget-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_f
    const-string v2, "Model directory must be set."

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v7, 0x7f

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_11
    const/16 v4, 0x1128

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v2, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    sget-object v1, Lmhx;->c:Lmhx;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lmhx;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    iget-object v0, v2, Lmhy;->m:Lfdo;

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v5, Lrra;->a:Lrra;

    nop

    nop

    if-eq v1, v5, :cond_1

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrrb;

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    sget-object v5, Lrra;->b:Lrra;

    nop

    nop

    if-eq v1, v5, :cond_1

    nop

    nop

    nop

    move v1, v4

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_13
    const-string v5, "call \'initialize()\' before calling \'start()\'."

    nop

    nop

    invoke-static {v1, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    sget-object v5, Lrra;->f:Lrra;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v5, :cond_2

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v5, Lrra;->g:Lrra;

    nop

    nop

    if-eq v1, v5, :cond_2

    nop

    nop

    move v1, v4

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v5, "can\'t call \'start()\' after calling \'stop()\'."

    nop

    invoke-static {v1, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    move-object v1, v0

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lrra;->e:Lrra;

    nop

    nop

    if-eq v1, v5, :cond_3

    nop

    nop

    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_15
    const-string v5, "can\'t call \'start()\' while paused. Use \'resume()\' instead."

    nop

    invoke-static {v1, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    nop

    move-object v5, v0

    nop

    nop

    nop

    check-cast v5, Lrrb;

    nop

    iget-object v5, v5, Lrrb;->f:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    if-ne v1, v5, :cond_4

    nop

    nop

    nop

    move v5, v4

    nop

    goto :goto_16

    nop

    nop

    :cond_4
    const/4 v5, 0x0

    nop

    nop

    :goto_16
    const-string v1, "\'start\' must be called from the thread that was used to call initialize()"

    nop

    nop

    invoke-static {v5, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    sget-object v4, Lrra;->c:Lrra;

    nop

    if-eq v1, v4, :cond_5

    nop

    nop

    nop

    nop

    check-cast v0, Lrrb;

    nop

    nop

    nop

    iget-object v0, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lrra;

    nop

    nop

    invoke-virtual {v0}, Lrra;->name()Ljava/lang/String;

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    move-object v1, v0

    nop

    check-cast v1, Lrrb;

    nop

    iget-object v1, v1, Lrrb;->e:Lrrp;

    nop

    invoke-virtual {v1}, Lrrp;->start()V

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    new-instance v4, Lkzc;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x11

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5}, Lkzc;-><init>(I)V

    invoke-virtual {v1, v4}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lrra;->d:Lrra;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    check-cast v0, Lrrb;

    nop

    nop

    iget-object v0, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lrra;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrra;->name()Ljava/lang/String;

    :goto_17
    sget-object v0, Lmhx;->d:Lmhx;

    nop

    nop

    nop

    iput-object v0, v2, Lmhy;->i:Lmhx;

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit v3

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit v3

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1a
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    if-eq v0, v2, :cond_7

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v8, v2, Lrrc;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v7, v2, Lrrc;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    iput v7, v2, Lrrc;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3a

    nop

    nop

    :goto_26
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_27
    iget-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_28
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_39

    nop

    nop

    :goto_29
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-byte v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_a1

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v1, Lrrd;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lmhy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v19, v7

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_32
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, v0, Lmif;->b:I

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_35
    sget-object v2, Lmhy;->a:Lsdb;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    monitor-enter v1

    nop

    nop

    nop

    :try_start_2
    sget-object v0, Lmhx;->c:Lmhx;

    nop

    nop

    nop

    iput-object v0, v2, Lmhy;->i:Lmhx;

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_38
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_39
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_3b
    or-int/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, v0, Lmif;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v2, Lmhy;->g:Lpdf;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v4, 0x1

    nop

    :try_start_3
    invoke-static {v4, v3, v1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lrrb;->h:Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v6}, Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;->setAllSpeechMixingRatio(D)V

    goto/16 :goto_76

    nop

    :cond_8
    const/4 v4, 0x1

    nop

    nop

    sget-object v0, Lhno;->a:Lhmn;

    nop

    goto/16 :goto_76

    nop

    nop

    :cond_9
    const/4 v1, 0x0

    nop

    const/4 v4, 0x1

    nop

    throw v1

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_40
    const-string v5, "Failed to create speech enhancer. Retrying ..."

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2, v0}, Lrrc;->b(F)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct/range {v8 .. v22}, Lrrd;-><init>(IIJJILj$/util/Optional;Lj$/util/Optional;Lsuk;Lj$/nio/file/Path;IFZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_43
    iget-object v0, v2, Lrrc;->f:Lsuk;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_45
    iget-object v1, v2, Lmhy;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_47
    iget-object v14, v2, Lrrc;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_48
    iget-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_49
    if-nez v0, :cond_a

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4a
    throw v0

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2}, Lrrc;->d()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v2, Lmhy;->g:Lpdf;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_4e
    sget-object v1, Lmhy;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, v1, Lrrd;->k:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_52
    iput-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_53
    const-string v3, "Initialize speech enhancer failed."

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v6, 0x1125

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_55
    iget-byte v0, v2, Lrrc;->k:B

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v1, Lrrd;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_57
    move-object/from16 v17, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v0, v3}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_4
    invoke-static {v1}, Llto;->r(Lrrd;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/32 :goto_d9

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_5a
    iget-boolean v2, v2, Lrrc;->j:Z

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object v0, v2, Lmhy;->m:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_5c
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-array v7, v5, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v0, Lmhy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5f
    iget-object v7, v2, Lrrc;->g:Lj$/nio/file/Path;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_60
    move v0, v2

    nop

    nop

    :goto_61
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_62
    int-to-byte v7, v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v0, Lrtt;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_21

    nop

    nop

    :goto_66
    if-nez v7, :cond_b

    nop

    goto/32 :goto_4b

    nop

    :cond_b
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_67
    iget v5, v2, Lrrc;->h:I

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v7, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v8, v7}, Lj$/nio/file/Path$-CC;->of(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v7

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v1, Lrrd;->g:Lj$/nio/file/Path;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_6b
    iget-object v1, v0, Lmhv;->a:Lmhy;

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, v1, Lmhy;->c:Landroid/content/Context;

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    iget-object v2, v1, Lmhy;->b:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v2, v0}, Lrrc;->a(I)V

    goto/32 :goto_55

    nop

    nop

    :goto_6d
    goto/16 :goto_92

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6f
    const v1, 0xd

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_70
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v7, v1, Lmhy;->k:Lhoh;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_73
    move/from16 v22, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2, v7}, Lrrc;->b(F)V

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_75
    invoke-static {v3, v5, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_76
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_78
    iput-wide v7, v2, Lrrc;->c:J

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_79
    iput v6, v2, Lrrc;->o:I

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7b
    const-string v2, "The \'raw audio interface type\' has been set to \'input stream\', but input stream wasn\'t provided."

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_7c
    sget-object v4, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput v4, v2, Lrrc;->o:I

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v0, v1, Lmhy;->d:Lsuk;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_7f
    iget-byte v0, v2, Lrrc;->k:B

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v5, v6, v0, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :try_start_6
    invoke-static {v1}, Llto;->r(Lrrd;)Lrss;

    move-result-object v4

    nop
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget v9, v2, Lrrc;->o:I

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v2, v6}, Lrrc;->c(Z)V

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_85
    iget-object v0, v1, Lmhy;->l:Llto;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-eq v0, v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2, v7}, Lrrc;->c(Z)V

    goto/32 :goto_5d

    nop

    nop

    :goto_89
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_8a
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_43

    nop

    nop

    :goto_8b
    iput-object v7, v2, Lrrc;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8c
    const/high16 v7, 0x467a0000    # 16000.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_8d
    iput-wide v7, v2, Lrrc;->b:J

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    throw v0

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_91

    nop

    nop

    :goto_90
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_92
    :try_start_7
    iget-object v0, v2, Lmhy;->m:Lfdo;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    sget-object v3, Lrra;->a:Lrra;

    nop

    sget-object v4, Lrra;->b:Lrra;

    nop

    nop

    nop

    nop

    invoke-static {v1, v3, v4}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_f

    nop

    nop

    goto/16 :goto_93

    nop

    nop

    nop

    nop

    :cond_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v3, Lrrb;->f:Ljava/lang/Thread;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->g:Lrrd;

    nop

    iget v3, v1, Lrrd;->k:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_10

    nop

    new-instance v3, Lrrg;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrd;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/io/InputStream;

    nop

    nop

    nop

    new-instance v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    move-object v5, v0

    nop

    nop

    nop

    check-cast v5, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lrrb;->g:Lrrd;

    nop

    nop

    iget-object v5, v5, Lrrd;->f:Lsuk;

    nop

    nop

    invoke-direct {v3, v1, v4, v5}, Lrrg;-><init>(Ljava/io/InputStream;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Lrrb;

    nop

    nop

    nop

    iput-object v1, v3, Lrrb;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    :cond_10
    check-cast v0, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lrra;->c:Lrra;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_93
    iget-object v0, v2, Lmhy;->m:Lfdo;

    nop

    nop

    nop

    iget-object v1, v2, Lmhy;->j:Lmif;

    nop

    nop

    nop

    iget-wide v3, v1, Lmif;->c:D

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, v0

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    sget-object v5, Lrra;->a:Lrra;

    nop

    if-eq v1, v5, :cond_11

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    sget-object v5, Lrra;->b:Lrra;

    nop

    nop

    if-eq v1, v5, :cond_11

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    goto :goto_94

    nop

    nop

    nop

    nop

    :cond_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_94
    const-string v5, "\'initialize()\' must be called before calling \'setMixRawAudioRatio()\'."

    nop

    invoke-static {v1, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    move-object v1, v0

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lrra;->f:Lrra;

    nop

    if-eq v1, v5, :cond_12

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    sget-object v5, Lrra;->g:Lrra;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v5, :cond_12

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_95

    nop

    nop

    nop

    nop

    nop

    :cond_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->ceIzAIrU:Ljava/lang/String;

    nop

    nop

    invoke-static {v1, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    cmpl-double v1, v3, v5

    nop

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    nop

    nop

    if-ltz v1, :cond_13

    nop

    nop

    nop

    nop

    cmpg-double v1, v3, v5

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_13

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    goto :goto_96

    nop

    nop

    nop

    nop

    :cond_13
    const/4 v1, 0x0

    nop

    :goto_96
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    const-string v8, "ratio must be 0-1 (got %s)"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v8, v7}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lrrb;

    nop

    iget-object v0, v0, Lrrb;->h:Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;

    nop

    invoke-virtual {v0, v3, v4}, Lcom/google/babelfish/device/avenh/l2l/speechenhancer2/jni/SpeechEnhancerJniWrapperRealtime;->setRawAudioMixingRatio(D)V

    iget-object v0, v2, Lmhy;->j:Lmif;

    nop

    iget v0, v0, Lmif;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    iget-object v0, v2, Lmhy;->m:Lfdo;

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lrra;->a:Lrra;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_14

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    sget-object v3, Lrra;->b:Lrra;

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_14

    nop

    nop

    const/4 v1, 0x1

    nop

    goto :goto_97

    nop

    nop

    nop

    :cond_14
    const/4 v1, 0x0

    nop

    nop

    :goto_97
    const-string v3, "\'initialize()\' must be called before calling \'setMixAllSpeechRatio()\'."

    nop

    invoke-static {v1, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    move-object v1, v0

    nop

    check-cast v1, Lrrb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    sget-object v3, Lrra;->f:Lrra;

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_15

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrrb;

    nop

    nop

    iget-object v1, v1, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    sget-object v3, Lrra;->g:Lrra;

    nop

    if-eq v1, v3, :cond_15

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_15
    const/4 v1, 0x0

    nop

    :goto_98
    const-string v3, "Can\'t call \'setMixAllSpeechRatio()\' after calling \'shutdown()\'."

    nop

    invoke-static {v1, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    const-string v3, "ratio must be 0-1 (got %s)"

    nop

    nop
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_b2

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_9a
    or-int/lit8 v7, v7, 0x20

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v9, :cond_16

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v6, v2, Lrrc;->i:F

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9d
    if-nez v0, :cond_17

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_19

    nop

    nop

    :goto_9e
    move-object/from16 v23, v1

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_9f
    iget v8, v2, Lrrc;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a0
    invoke-static {v3, v5, v0, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_a1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v0, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a3
    const/4 v3, 0x0

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const v0, 0x19

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_a6
    const-string v3, "SEController#createInstance"

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_a7
    const/16 v5, 0x112c

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    or-int/2addr v7, v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const-string v1, "Create speech enhancer instance failed."

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-wide v11, v2, Lrrc;->b:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_ab
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_ac
    move/from16 v20, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_ad
    move-object v1, v13

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v4, 0x1

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v0, v1}, Lrtt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez v0, :cond_18

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_ae

    nop

    nop

    :goto_b5
    const/16 v5, 0x1126

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_b6
    sget-object v3, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->ieNvFlh:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v8, ""

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move-object v8, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_b9
    invoke-direct {v2, v3}, Lrrc;-><init>([B)V

    goto/32 :goto_79

    nop

    nop

    :goto_ba
    invoke-static {v3, v4, v2, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_bb
    if-lez v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_25

    nop

    :goto_bc
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_bd
    iget-object v0, v1, Lmhy;->j:Lmif;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_be
    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_bf
    iput v6, v2, Lrrc;->m:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_c1
    if-nez v2, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_1a
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_c3
    sget-object v8, Lhno;->d:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v2}, Lrrc;->d()V

    goto/32 :goto_bf

    nop

    nop

    :goto_c5
    iget v0, v2, Lrrc;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_c6
    iget v10, v2, Lrrc;->a:I

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c7
    if-nez v15, :cond_1b

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    new-instance v13, Lrrd;

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_c9
    move-wide v13, v3

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_ca
    const/4 v3, 0x0

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iput-byte v7, v2, Lrrc;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_cd
    move-object/from16 v2, v23

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {v0, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/16 :goto_7

    nop

    :goto_d0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d1
    if-eq v0, v7, :cond_1c

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_1c
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_d2
    new-instance v2, Lrrc;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v2, v6}, Lrrc;->a(I)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, v1, Lmhy;->j:Lmif;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_d5
    iput-object v0, v2, Lrrc;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    add-int v0, v0, v1

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/16 :goto_a1

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_db
    iput-byte v0, v2, Lrrc;->k:B

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_dc
    const-string v3, "Failed to open an asset file descriptor for the SpeechEnhancer model."

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_df
    move-object/from16 v16, v14

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_e0
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_e1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_e2
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const-string v3, "Failed to retry creating speech enhancer!"

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_e4
    iput-object v7, v2, Lrrc;->g:Lj$/nio/file/Path;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    or-int/lit8 v0, v0, 0x4

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_e6
    iput v6, v2, Lrrc;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop
.end method
