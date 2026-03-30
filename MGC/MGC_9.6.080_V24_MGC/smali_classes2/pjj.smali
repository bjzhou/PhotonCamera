.class public final Lpjj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lpgn;

.field private final b:Lpiv;

.field private final c:Lpjv;

.field private final d:Ljava/util/Set;

.field private final e:Lryy;

.field private final f:Ljava/util/Set;

.field private final g:Lpmt;

.field private final h:Ljava/util/Set;

.field private final i:Landroidx/wear/ambient/AmbientDelegate;

.field private final j:Lhwy;

.field private final k:Lpuq;


# direct methods
.method private final declared-synchronized 1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lpjj;->33b3102b6558811a7b7629a1e8e59bd2m()V

    iget-object v0, p0, Lpjj;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private final declared-synchronized 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpjj;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_1
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpir;->l()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lpir;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lpjz;
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p3}, Lpjj;->o(Ljava/util/Set;)Z

    move-result v0

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v6, p4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v4, p2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_11
    invoke-direct/range {v1 .. v7}, Lpjj;->51550bab6b6440a4fd45f825c221b363m(Lphc;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpjj;->a:Lpgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lpjj;->a:Lpgn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lpgn;->e:Lphc;

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lpgn;->f:Lphc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lphc;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;
    .locals 14

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v6, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, v7, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v7}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v4, p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 p3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v6, :cond_0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v12, v0}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v5, Lcom/CameraLensesScan;->sCameraLens:Ljava/util/Map;

    nop

    .local v5, "v5":Ljava/util/Map;
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4}, Lryy;->em()Lscp;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v12, v4}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_c4

    nop

    nop

    :goto_11
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c8

    nop

    nop

    :goto_13
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_14
    goto/16 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v3}, La;->au(Z)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, v4, Lpip;->c:Lryy;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_18
    move-object v9, v4

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v4}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_21
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, v4, Lpgn;->h:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    throw v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_26
    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_2
    goto/32 :goto_a0

    nop

    :goto_28
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_29
    check-cast v5, Lpha;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v5, "Conflicting parameter value for "

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v5

    nop

    :try_start_0
    iget-object v4, v4, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    check-cast v4, Lpjq;

    nop

    invoke-static {v4}, Landroidx/wear/ambient/AmbientDelegate;->K(Lpjq;)Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_d3

    nop

    nop

    :goto_2e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v11, p5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v0, " and "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v8}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_32
    goto/16 :goto_60

    nop

    :goto_33
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v1, v0

    nop

    nop

    :try_start_1
    invoke-interface {v5}, Lpci;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_35
    move p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v12, v13}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_92

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3e
    iget-object v4, v1, Lphc;->b:Lryb;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_3f
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_40
    if-nez v7, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v4, v0, Lpjj;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_43
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_44
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_45
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v1, v1, Lphc;->a:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_48
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_49
    sget-object v4, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    .local v4, "v4":Ljava/lang/String;
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4a
    if-eqz v6, :cond_7

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v7, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_8
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_a1

    nop

    :goto_4d
    invoke-direct/range {v4 .. v11}, Lphx;-><init>(Lhon;Lrbh;Lpiv;Lryy;Lpdf;Ljava/util/Set;Ljava/util/Set;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v8, v4, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_52
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_53
    move-object v1, p1

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_54
    iget-object v3, v3, Lpir;->a:Lpgo;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_55
    iget-object v2, v6, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_57
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_59
    if-eqz v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_5c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 p2, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_60
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v5, Lpha;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v7, v6, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, v0, Lpjj;->b:Lpiv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_68
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_69
    iget-object v4, v4, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance v12, Lryw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_6b
    invoke-static {v3}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v3

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v10, p4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v5, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_6e
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6f
    if-eqz v8, :cond_c

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_c
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_71
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-string v7, "Conflicting parameter value for CaptureRequest"

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v2, Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_78
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_79
    if-nez v6, :cond_d

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_f6

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 p4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_7f
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v10, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast v5, Lpha;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const-string v0, ": "

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_84
    if-eqz v6, :cond_e

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_87
    goto/32 :goto_21

    nop

    nop

    :goto_88
    check-cast v7, Lpha;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v7, v6, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    sget v5, Ltbt;->ActiveCamID:I

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_8f
    if-nez v5, :cond_f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v5, Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v7, Lpiv;

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v7, v4, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_93
    new-instance v0, Lpjz;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_94
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v8, v7, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v5, :cond_10

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    :goto_99
    iget-object v4, v0, Lpjj;->g:Lpmt;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_9a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9b
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v3, :cond_11

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    move-object v4, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v5}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v5

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

    :goto_a5
    throw v1

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_be

    nop

    nop

    :goto_a8
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_aa
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v2, v4}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_f3

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_fc

    nop

    nop

    :goto_b1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v8, v7, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_b3
    const-string v0, " do not match."

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_b4
    check-cast v6, Lrbh;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b5
    check-cast v7, Lpha;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    check-cast v5, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b8
    move-object/from16 p5, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_ba
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_60

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_bf
    invoke-direct {v12}, Lryw;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c0
    check-cast v5, Lpha;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_c2
    move-object v0, p0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v4, v0, Lpjj;->j:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_c5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v3, Lpir;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_cc
    new-instance v13, Lphx;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast v6, Lpha;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v4}, Lpmt;->b()Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_d1
    if-lt v6, v5, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v8, Lryy;

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

    :goto_d3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_d4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_d5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v6, v4, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_d7
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_d8
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v0, v6, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v5, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v6, v7}, Lpha;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v5}, Lpci;->close()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_e1
    invoke-direct {v2}, Lryw;-><init>()V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_e2
    sget-object v4, Ltbt;->CaptureRequestKey:Ljava/util/Map;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e3
    invoke-interface {v6}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_e4
    check-cast v4, Lpip;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e5
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v12}, Lryw;->g()Lryy;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_e8
    check-cast v5, Lpgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_ea
    iget-object v4, v0, Lpjj;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_eb
    check-cast v9, Lpdf;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_1e

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_ed
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_f

    nop

    nop

    :goto_ef
    invoke-interface {v5}, Lpgo;->c()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    :goto_f1
    check-cast v5, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_f2
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_f3
    goto/32 :goto_80

    nop

    nop

    :goto_f4
    if-nez v5, :cond_14

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_78

    nop

    nop

    :goto_f5
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_f6
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v6, v5, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v7, v6, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_f9
    iget-object v5, v4, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_fa
    iget-object v4, v0, Lpjj;->a:Lpgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    move-object/from16 v10, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_fd
    const-string v6, "ERROR"

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_fe
    check-cast v8, Lpha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_ff
    if-eq v4, v5, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_e2

    nop

    nop

    :goto_100
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-direct/range {p0 .. p5}, Lpjz;-><init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    if-eqz v6, :cond_16

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_16
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpgn;Lpiv;Lhwy;Landroidx/wear/ambient/AmbientDelegate;Lrbh;Lpuq;Ljava/util/Set;Lpjv;Landroidx/wear/ambient/AmbientDelegate;Lpmt;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpjj;->a:Lpgn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit p5

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/HashSet;

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

    nop

    :goto_3
    iput-object p9, p0, Lpjj;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lpjj;->h:Ljava/util/Set;

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

    nop

    :goto_5
    iput-object p1, p0, Lpjj;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iput-object p8, p0, Lpjj;->c:Lpjv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lpjj;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lpjj;->j:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lpjj;->b:Lpiv;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p4}, Landroidx/wear/ambient/AmbientDelegate;->L()Lryy;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p6, p0, Lpjj;->k:Lpuq;

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

    :goto_e
    invoke-direct {p1}, Lryw;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p10, p0, Lpjj;->g:Lpmt;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    new-instance p1, Lryw;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    monitor-enter p5

    nop

    :try_start_1
    iget-object p2, p5, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    nop

    nop

    nop

    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    check-cast p3, Lphw;

    nop

    invoke-virtual {p3}, Lphw;->s()Lpip;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_13

    nop

    nop

    nop

    :cond_0
    monitor-exit p5

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lryw;->g()Lryy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lpjj;->e:Lryy;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private final declared-synchronized b1051a9d8893542362ad09051775f8f6m()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    invoke-direct {p0}, Lpjj;->33b3102b6558811a7b7629a1e8e59bd2m()V

    iget-object v0, p0, Lpjj;->f:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpir;->g()V

    invoke-virtual {v1}, Lpir;->h()V

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lpjj;->f:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private static final o(Ljava/util/Set;)Z
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v1, 0x7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lphh;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

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

    :goto_8
    invoke-interface {v0}, Lpgo;->d()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lpgo;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    invoke-interface {v1}, Lphh;->f()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lpgn;->c:Lphc;

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
    goto/32 :goto_1a

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_6
    iget-object v0, p0, Lpjj;->a:Lpgn;

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

    :goto_7
    goto :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    move-object v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpjj;->a:Lpgn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v7, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v1 .. v7}, Lpjj;->51550bab6b6440a4fd45f825c221b363m(Lphc;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lpgn;->d:Lphc;

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

    :goto_14
    invoke-static {p3}, Lpjj;->o(Ljava/util/Set;)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    move-object v4, p2

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

    nop

    :goto_17
    move-object v6, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v3, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_a

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    throw v0

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    new-instance v1, Lpfi;

    nop

    nop

    invoke-direct {v1, v0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    :goto_d
    monitor-exit p0

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

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lpjj;->c:Lpjv;

    nop

    invoke-interface {v0}, Lpjv;->a()V

    invoke-direct {p0}, Lpjj;->b1051a9d8893542362ad09051775f8f6m()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lprg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lpjj;->c:Lpjv;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpjv;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized d(Ljava/util/List;Ljava/util/List;)V
    .locals 11

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

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

    nop

    xor-int/2addr v0, v1

    nop

    invoke-static {v0}, La;->au(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    move v0, v1

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, La;->au(Z)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lphz;

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lphz;->d:Lrss;

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    xor-int/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, La;->au(Z)V

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lphz;->a:Ljava/util/Set;

    nop

    nop

    nop

    iget-object v7, v2, Lphz;->b:Ljava/util/Set;

    nop

    iget-object v8, v2, Lphz;->c:Ljava/util/Set;

    nop

    nop

    nop

    sget-object v10, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    move-object v5, p0

    nop

    nop

    nop

    move-object v9, v4

    nop

    invoke-virtual/range {v5 .. v10}, Lpjj;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;

    move-result-object v2

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lpjj;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p1, p0, Lpjj;->c:Lpjv;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpjv;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lphz;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p1, Lphz;->a:Ljava/util/Set;

    nop

    nop

    nop

    iget-object v1, p1, Lphz;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lphz;->c:Ljava/util/Set;

    nop

    nop

    sget-object v2, Lsbn;->a:Lsbn;

    nop

    invoke-direct {p0, v0, v1, p1, v2}, Lpjj;->3fd9578e124c68aa49885b22b61b4ec8m(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lpjz;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpjj;->c:Lpjv;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lpjv;->b(Lpjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

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

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized f(Lphz;Ljava/util/Set;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, p1, Lphz;->d:Lrss;

    nop

    nop

    nop

    iget-object v1, p1, Lphz;->a:Ljava/util/Set;

    nop

    nop

    iget-object v2, p1, Lphz;->b:Ljava/util/Set;

    nop

    nop

    iget-object v3, p1, Lphz;->c:Ljava/util/Set;

    nop

    move-object v0, p0

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Lpjj;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lrss;)Lpjz;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Lpjj;->1a36313b7ed15ba14e0acb4da569b8b7m(Ljava/util/Set;)V

    iget-object p2, p0, Lpjj;->c:Lpjv;

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lpjv;->d(Lpjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

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

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(Lphz;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p1, Lphz;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iget-object v1, p1, Lphz;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lphz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0, v1, p1, v2}, Lpjj;->3fd9578e124c68aa49885b22b61b4ec8m(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lpjz;

    move-result-object p1

    nop

    nop

    iget-object v0, p0, Lpjj;->c:Lpjv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lpjv;->d(Lpjz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(Lpgx;)Lqgk;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lpjj;->i()Lqgk;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lqgk;->d()V

    iget-object v1, v0, Lqgk;->c:Ljava/lang/Object;

    nop

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, v0, Lqgk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i()Lqgk;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x9

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

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    new-instance v1, Lqgk;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    nop

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v3, v4, v0}, Lqgk;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Lrss;)V

    iget-object v0, v1, Lqgk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpjj;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lpjj;->e:Lryy;

    nop

    invoke-virtual {v1, v0}, Lqgk;->f(Ljava/util/Set;)V

    iget-object v0, p0, Lpjj;->k:Lpuq;

    nop

    nop

    invoke-virtual {v1, v0}, Lqgk;->h(Lpuq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
