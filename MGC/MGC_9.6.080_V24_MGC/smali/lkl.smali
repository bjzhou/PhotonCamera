.class public final synthetic Llkl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llkm;

.field public final synthetic b:Lsuu;

.field public final synthetic c:Lsuu;


# direct methods
.method public synthetic constructor <init>(Llkm;Lsuu;Lsuu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llkl;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Llkl;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p1, p0, Llkl;->a:Llkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 40

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_91

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_1
    move-object/from16 v23, v6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_40

    nop

    nop

    :goto_3
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v7}, Llkx;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :goto_4
    goto/32 :goto_42

    nop

    nop

    :goto_5
    goto :goto_2

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6
    move-object v1, v0

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

    :goto_7
    if-nez v8, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v8}, Llkx;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_88

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_69

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

    goto/32 :goto_68

    nop

    nop

    :goto_a
    move-object/from16 p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v23, :cond_2

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Llkx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 p0, v3

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Llkx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-wide v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v2, "Error processing the input image:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    :try_start_4
    monitor-exit v3

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Llkl;->c:Lsuu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 p0, v3

    nop

    nop

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

    :goto_17
    iget-object v3, v3, Llkq;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_19
    :try_start_5
    const-string v0, ""

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v7, v0}, Llkz;->a(Ljava/lang/String;)Llkx;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    :try_start_6
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v0, Llkq;->i:Llkz;

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    sget-object v9, Lhni;->Y:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v9}, Lhoh;->p(Lhmn;)Z

    move-result v9

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Llkl;->a:Llkm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v22, v4

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1d
    monitor-enter v3

    nop

    nop

    :try_start_7
    iget-object v4, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    iget-boolean v4, v4, Llkq;->k:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    move-object/from16 v22, v4

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1f
    move-object v1, v0

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_20
    iget-object v5, v0, Llkl;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, v1, Llkm;->m:Llkq;

    nop

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

    :goto_22
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v3, 0xef0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v9, :cond_4

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_8
    sget-object v9, Lhni;->Z:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v9}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 p0, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v23, v6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_6d

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_28
    move-object/from16 v3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_29
    move-object v2, v0

    nop

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v1

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v6, v18

    nop

    nop

    nop

    :try_start_a
    invoke-static/range {v10 .. v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_monocular_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V

    goto :goto_2c

    nop

    nop

    nop

    :cond_5
    move-object/from16 p0, v3

    nop

    nop

    move-object/from16 v22, v4

    nop

    nop

    nop

    move-object/from16 v23, v6

    nop

    nop

    nop

    nop

    move-object v3, v12

    nop

    nop

    nop

    nop

    move-object v4, v13

    nop

    move-object v6, v14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    iget-wide v11, v10, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    iget-wide v13, v0, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    nop

    move-wide/from16 v16, v11

    nop

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    move-wide/from16 v19, v13

    nop

    nop

    move-object/from16 v21, v0

    nop

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_depth_postprocessor_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V

    :cond_6
    if-eqz v4, :cond_7

    nop

    iget-object v0, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    iget-wide v10, v0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    iget-wide v12, v4, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    move-wide/from16 v16, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v0

    nop

    nop

    move-wide/from16 v19, v12

    nop

    nop

    nop

    nop

    move-object/from16 v21, v4

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_pdlearned_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V

    :cond_7
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    iget-wide v12, v6, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    nop

    nop

    move-wide/from16 v16, v10

    nop

    nop

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v19, v12

    nop

    move-object/from16 v21, v6

    nop

    nop

    nop

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_pdstereo_depth_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V

    :cond_8
    if-eqz v3, :cond_9

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    iget-wide v12, v3, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    nop

    nop

    move-wide/from16 v16, v10

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    move-wide/from16 v19, v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v21, v3

    nop

    nop

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_pd_disparity_model_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/AssetData;)V

    :cond_9
    new-instance v0, Llkf;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Llkf;-><init>(Llkm;)V

    new-instance v3, Llkg;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Llkg;-><init>(Llkm;)V

    new-instance v4, Llkh;

    nop

    invoke-direct {v4, v1, v5}, Llkh;-><init>(Llkm;Lsuu;)V

    new-instance v6, Llki;

    nop

    nop

    invoke-direct {v6, v1, v2}, Llki;-><init>(Llkm;Lsuu;)V

    new-instance v10, Llkj;

    nop

    nop

    nop

    nop

    invoke-direct {v10, v1, v2}, Llkj;-><init>(Llkm;Lsuu;)V

    new-instance v2, Lsys;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lsys;-><init>()V

    iput-object v2, v1, Llkm;->a:Lsys;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lcom/google/googlex/gcam/PortraitOutputs;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lcom/google/googlex/gcam/PortraitOutputs;-><init>()V

    iget-object v11, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v11, v11, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setProgressCallback(JLcom/google/googlex/gcam/base/function/LongFloatConsumer;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    iget-wide v11, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Llke;

    nop

    invoke-direct {v13, v1, v6}, Llke;-><init>(Llkm;Llkn;)V

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setUpsampledInputImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    iget-wide v11, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    nop

    new-instance v6, Llke;

    nop

    invoke-direct {v6, v1, v10}, Llke;-><init>(Llkm;Llkn;)V

    invoke-virtual {v0, v11, v12, v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    invoke-virtual {v0, v10, v11, v3}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setLogCallback(JLcom/google/googlex/gcam/base/function/LongStringConsumer;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v10, v11, v4}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setCompleteCallback(JLcom/google/googlex/gcam/base/function/LongConsumer;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    iget-object v0, v0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    iget-wide v3, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    iget-object v6, v1, Llkm;->a:Lsys;

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v3, Lhni;->k:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Llkk;

    nop

    const/4 v3, 0x1

    nop

    nop

    invoke-direct {v0, v1, v3}, Llkk;-><init>(Llkm;I)V

    iget-object v3, v1, Llkm;->m:Llkq;

    nop

    iget-object v3, v3, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    nop

    new-instance v4, Llke;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v0}, Llke;-><init>(Llkm;Llkn;)V

    invoke-virtual {v3, v10, v11, v4}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setSecondaryImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    :cond_a
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v3, Lhni;->i:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Llkk;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v3}, Llkk;-><init>(Llkm;I)V

    iget-object v4, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    iget-object v4, v4, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    iget-object v6, v1, Llkm;->a:Lsys;

    nop

    nop

    nop

    invoke-virtual {v4, v10, v11, v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setDebugRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    iget-object v4, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    nop

    new-instance v6, Llke;

    nop

    nop

    nop

    invoke-direct {v6, v1, v0}, Llke;-><init>(Llkm;Llkn;)V

    invoke-virtual {v4, v10, v11, v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setDebugImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    :cond_b
    new-instance v0, Lcom/google/googlex/gcam/StringRawReadViewMap;

    nop

    nop

    nop

    invoke-direct {v0}, Lcom/google/googlex/gcam/StringRawReadViewMap;-><init>()V

    iget-object v4, v1, Llkm;->g:Lsye;

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/RawReadView;->d()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Llkm;->h:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Llkq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Llkm;->g:Lsye;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4, v6}, Lcom/google/googlex/gcam/StringRawReadViewMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/RawReadView;)V

    sget-object v4, Llkq;->b:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v6, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Llkm;->h:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    invoke-static {v4, v6, v10}, Lisq;->a(Ljava/lang/String;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_c
    iget-object v4, v1, Llkm;->i:Lsye;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/RawReadView;->d()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_e

    nop

    nop

    iget-object v4, v1, Llkm;->j:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    nop

    iget-object v4, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llkq;->p:Lhoh;

    nop

    sget-object v6, Lhmq;->ae:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    if-eqz v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Llkq;->d:Ljava/lang/String;

    nop

    nop

    goto :goto_2d

    nop

    nop

    :cond_d
    sget-object v4, Llkq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v6, v1, Llkm;->i:Lsye;

    nop

    nop

    invoke-virtual {v0, v4, v6}, Lcom/google/googlex/gcam/StringRawReadViewMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/RawReadView;)V

    iget-object v6, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    iget-object v10, v1, Llkm;->j:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    invoke-static {v4, v6, v10}, Lisq;->a(Ljava/lang/String;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_e
    new-instance v4, Lsyc;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Llkm;->k:Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    nop

    nop

    nop

    nop

    new-instance v14, Lcom/google/googlex/gcam/InterleavedReadViewU16;

    nop

    nop

    iget-wide v10, v6, Lcom/google/googlex/gcam/InterleavedImageU16;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU16_read_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v14, v10, v11}, Lcom/google/googlex/gcam/InterleavedReadViewU16;-><init>(J)V

    iget-wide v12, v14, Lcom/google/googlex/gcam/InterleavedReadViewU16;->a:J

    nop

    iget-wide v10, v0, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J

    nop

    move-wide v15, v10

    nop

    nop

    nop

    move-object/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v12 .. v17}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PortraitDepthArguments(JLcom/google/googlex/gcam/InterleavedReadViewU16;JLcom/google/googlex/gcam/StringRawReadViewMap;)J

    move-result-wide v10

    nop

    nop

    nop

    invoke-direct {v4, v10, v11}, Lsyc;-><init>(J)V

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lhni;->C:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_f

    nop

    nop

    new-instance v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    iget-object v6, v1, Llkm;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->d()I

    move-result v6

    nop

    nop

    iget-object v10, v1, Llkm;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    invoke-virtual {v10}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v10

    nop

    nop

    nop

    nop

    iget-object v11, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v11

    nop

    nop

    invoke-direct {v0, v6, v10, v11}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(IIZ)V

    iput-object v0, v1, Llkm;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    iget-wide v10, v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->a:J

    nop

    nop

    nop

    nop

    iget-wide v12, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    invoke-static {v12, v13, v2, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitOutputs_dynamic_depth_result_ptr_set(JLcom/google/googlex/gcam/PortraitOutputs;J)V

    :cond_f
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->n:Llyv;

    nop

    sget-object v6, Llyr;->aP:Llze;

    nop

    invoke-virtual {v0, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    new-instance v0, Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lcom/google/googlex/gcam/HdrGainMapInfo;-><init>()V

    iput-object v0, v1, Llkm;->c:Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    nop

    iget-object v0, v1, Llkm;->c:Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    nop

    invoke-static {v0}, Lcom/google/googlex/gcam/HdrGainMapInfo;->a(Lcom/google/googlex/gcam/HdrGainMapInfo;)J

    move-result-wide v10

    nop

    nop

    iget-wide v12, v2, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    invoke-static {v12, v13, v2, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitOutputs_hdr_gain_map_info_ptr_set(JLcom/google/googlex/gcam/PortraitOutputs;J)V

    :cond_10
    new-instance v6, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->o:Llks;

    nop

    nop

    const-wide/16 v10, 0x0

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Llks;->a()J

    move-result-wide v12

    nop

    nop

    nop

    move-wide/from16 v25, v12

    nop

    nop

    goto :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_11
    move-wide/from16 v25, v10

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->l:Llld;

    nop

    nop

    nop

    if-eqz v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Llld;->a()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    move-wide/from16 v27, v12

    nop

    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_12
    move-wide/from16 v27, v10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->m:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    iget-wide v12, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12, v13, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetPortraitBrighteningProcessor(JLcom/google/googlex/gcam/Gcam;)J

    move-result-wide v12

    nop

    cmp-long v0, v12, v10

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    move-object v0, v14

    nop

    nop

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    :cond_13
    new-instance v0, Lsyb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v12, v13, v3}, Lsyb;-><init>(JZ)V

    :goto_30
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v29, v10

    nop

    nop

    goto :goto_31

    nop

    :cond_14
    iget-wide v12, v0, Lsyb;->a:J

    nop

    nop

    nop

    nop

    move-wide/from16 v29, v12

    nop

    nop

    :goto_31
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->m:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    iget-wide v12, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    invoke-static {v12, v13, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetLancetRunner(JLcom/google/googlex/gcam/Gcam;)J

    move-result-wide v12

    nop

    nop

    nop

    cmp-long v0, v12, v10

    nop

    nop

    nop

    nop

    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    move-object v0, v14

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    :cond_15
    new-instance v0, Lsyh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v12, v13}, Lsyh;-><init>(J)V

    :goto_32
    if-nez v0, :cond_16

    nop

    nop

    move-wide/from16 v31, v10

    nop

    nop

    nop

    goto :goto_33

    nop

    :cond_16
    iget-wide v12, v0, Lsyh;->a:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v31, v12

    nop

    nop

    nop

    :goto_33
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->m:Lcom/google/googlex/gcam/Gcam;

    nop

    iget-wide v12, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    invoke-static {v12, v13, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetWalnutRunner(JLcom/google/googlex/gcam/Gcam;)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v12, v10

    nop

    nop

    if-nez v0, :cond_17

    nop

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    nop

    :cond_17
    new-instance v14, Lsyh;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v12, v13}, Lsyh;-><init>(J)V

    :goto_34
    if-nez v14, :cond_18

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v33, v10

    nop

    nop

    nop

    goto :goto_35

    nop

    nop

    nop

    nop

    :cond_18
    iget-wide v12, v14, Lsyh;->a:J

    nop

    nop

    nop

    nop

    move-wide/from16 v33, v12

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    sget-object v3, Lhni;->K:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v35

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lhni;->L:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v36

    nop

    nop

    nop

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    sget-object v3, Lhni;->M:Lhmn;

    nop

    nop

    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v37

    nop

    nop

    nop

    nop

    move-object/from16 v24, v6

    nop

    nop

    nop

    invoke-direct/range {v24 .. v37}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;-><init>(JJJJJZZZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    new-instance v0, Llko;

    nop

    nop

    nop

    iget-object v3, v1, Llkm;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    iget-object v12, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    invoke-direct {v0, v2, v3, v4, v12}, Llko;-><init>(Lcom/google/googlex/gcam/PortraitOutputs;Lcom/google/googlex/gcam/InterleavedImageU8;Lsyc;Lcom/google/googlex/gcam/PortraitRequest;)V

    iget-object v2, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llkq;->h:Ljava/util/HashMap;

    nop

    nop

    iget-wide v3, v1, Llkm;->d:J

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v1, Llkm;->d:J

    nop

    nop

    nop

    nop

    iget-object v4, v0, Llko;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Lcom/google/googlex/gcam/PortraitOutputs;

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    nop

    nop

    nop

    iget-object v4, v0, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    invoke-static {v4}, Lcom/google/googlex/gcam/InterleavedImageU8;->e(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v31

    nop

    nop

    nop

    iget-object v4, v0, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lsyc;

    nop

    nop

    nop

    nop

    nop

    iget-wide v14, v4, Lsyc;->a:J

    nop

    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_19

    nop

    nop

    nop

    :goto_36
    move-wide/from16 v37, v10

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_19
    check-cast v0, Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    iget-wide v10, v0, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto :goto_36

    nop

    nop

    nop

    :goto_37
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    sget-object v4, Lhni;->I:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lhoh;->p(Lhmn;)Z

    move-result v39

    nop

    iget-wide v10, v6, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v35, 0x0

    nop

    nop

    move-object/from16 v24, v6

    nop

    nop

    move-wide/from16 v25, v10

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v27, v2

    nop

    move-wide/from16 v29, v12

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v33, v14

    nop

    nop

    invoke-virtual/range {v24 .. v39}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->processImpl(JJJJJJJZ)Z

    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    iget-object v0, v0, Llkq;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    iget-wide v2, v1, Llkm;->d:J

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Llkm;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    iget-object v0, v1, Llkm;->k:Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU16;->b()V

    iget-object v0, v1, Llkm;->g:Lsye;

    nop

    if-eqz v0, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->a()V

    :cond_1a
    iget-object v0, v1, Llkm;->i:Lsye;

    nop

    nop

    nop

    if-eqz v0, :cond_1b

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/RawReadView;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    :cond_1b
    :try_start_c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->close()V

    monitor-exit v9

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_2a

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object/from16 p0, v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_60

    nop

    nop

    :goto_3e
    :try_start_d
    invoke-static {v0}, Lhni;->a(Lhoh;)Z

    move-result v7

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v22, v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_40
    move-object v1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v23, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_1c
    :try_start_e
    invoke-virtual/range {v23 .. v23}, Llkx;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_16

    :goto_43
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v7, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_1d
    :try_start_f
    invoke-static {v8}, Llkz;->b(Lcom/google/googlex/gcam/PortraitRequest;)Z

    move-result v7

    nop

    if-eqz v7, :cond_1e

    nop

    nop

    nop

    sget-object v7, Lhni;->O:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/16 :goto_64

    nop

    :cond_1e
    sget-object v7, Lhni;->N:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v7, :cond_1f

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    :try_start_10
    sget-object v7, Lhni;->x:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_47
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_11
    invoke-virtual {v6}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_54

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v23, v6

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_4b
    invoke-virtual {v5, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4d
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_12
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4f
    if-nez v9, :cond_20

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_20
    :try_start_13
    invoke-static {v8}, Llkz;->b(Lcom/google/googlex/gcam/PortraitRequest;)Z

    move-result v8

    nop

    if-eqz v8, :cond_21

    nop

    sget-object v8, Lhni;->R:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_50

    nop

    :cond_21
    sget-object v8, Lhni;->Q:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_50
    invoke-static {v0}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v23, v6

    nop

    :goto_52
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_54
    throw v1

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v1, Llkq;->a:Lsdb;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v1, v0

    nop

    nop

    :goto_57
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5a
    move-object v1, v0

    nop

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

    :goto_5b
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :catchall_b
    move-exception v0

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

    :goto_5c
    move-object/from16 v22, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez p0, :cond_22

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_22
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Llkx;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :goto_5e
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto :goto_66

    nop

    :catchall_c
    move-exception v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_62
    goto :goto_64

    nop

    :goto_63
    :try_start_16
    sget-object v7, Lhni;->P:Lhmn;

    nop

    invoke-virtual {v0, v7}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_64
    invoke-static {v0}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Llkz;->a(Ljava/lang/String;)Llkx;

    move-result-object v6

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :try_start_17
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Llkq;->i:Llkz;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    sget-object v9, Lhni;->w:Lhmn;

    nop

    nop

    invoke-virtual {v0, v9}, Lhoh;->p(Lhmn;)Z

    move-result v9

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 p0, v3

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_68
    move-object v2, v0

    nop

    nop

    :try_start_18
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_69
    throw v1

    nop

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    move-object/from16 p0, v3

    nop

    nop

    nop

    move-object/from16 v22, v4

    nop

    move-object/from16 v23, v6

    nop

    nop

    nop

    :goto_6a
    monitor-exit v9

    nop

    nop

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    throw v0

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :catchall_e
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :catchall_f
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v2, v0

    nop

    nop

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6d
    throw v1

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :catchall_10
    move-exception v0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    throw v0

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_4e

    nop

    :catchall_11
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_71
    move-object/from16 v23, v6

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v7, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_23
    :try_start_1b
    invoke-virtual {v7}, Llkx;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_52

    nop

    nop

    :catchall_12
    move-exception v0

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

    :goto_74
    if-eqz v4, :cond_24

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_24
    :try_start_1c
    new-instance v0, Lpfi;

    nop

    nop

    const-string v1, "Controller hasn\'t been initialized"

    nop

    nop

    invoke-direct {v0, v1}, Lpfi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :goto_75
    monitor-exit v3

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    iget-object v3, v0, Llkq;->i:Llkz;

    nop

    iget-object v4, v1, Llkm;->n:Lkog;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    sget-object v6, Lhni;->A:Lhmn;

    nop

    nop

    invoke-virtual {v0, v6}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_25

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpoh;->l()Lpog;

    move-result-object v4

    nop

    nop

    nop

    nop

    sget-object v6, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_25

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhni;->S:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto :goto_76

    nop

    nop

    :cond_25
    const-string v0, ""

    nop

    nop

    :goto_76
    invoke-virtual {v3, v0}, Llkz;->a(Ljava/lang/String;)Llkx;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    :try_start_1e
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    iget-object v4, v0, Llkq;->i:Llkz;

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lhni;->T:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Llkz;->a(Ljava/lang/String;)Llkx;

    move-result-object v4

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :try_start_1f
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    iget-object v6, v0, Llkq;->i:Llkz;

    nop

    iget-object v7, v1, Llkm;->n:Lkog;

    nop

    nop

    nop

    iget-object v0, v0, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    invoke-virtual {v7}, Lpoh;->l()Lpog;

    move-result-object v7

    nop

    nop

    nop

    sget-object v9, Lpog;->a:Lpog;

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v8, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_26
    :try_start_20
    invoke-virtual {v8}, Llkx;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :goto_78
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_7a
    move-object/from16 v22, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_1a

    nop

    nop

    :catchall_13
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7c
    if-lez v0, :cond_27

    nop

    goto/32 :goto_39

    nop

    :cond_27
    goto/32 :goto_38

    nop

    :goto_7d
    if-nez v22, :cond_28

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_28
    :try_start_21
    invoke-virtual/range {v22 .. v22}, Llkx;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v7, :cond_29

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_7f
    return-void

    nop

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_80
    if-nez v22, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_2a
    :try_start_22
    invoke-virtual/range {v22 .. v22}, Llkx;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_81
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_82
    move-object/from16 v12, v19

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_83
    move-object/from16 v19, v10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move-object/from16 v22, v4

    nop

    :goto_85
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_87
    :try_start_23
    const-string v0, ""

    nop

    :goto_88
    invoke-virtual {v8, v0}, Llkz;->a(Ljava/lang/String;)Llkx;

    move-result-object v8

    nop
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    :try_start_24
    iget-object v0, v1, Llkm;->m:Llkq;

    nop

    nop

    nop

    iget-object v9, v0, Llkq;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v9

    nop

    nop
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :try_start_25
    iget-object v15, v3, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    nop

    iget-object v0, v4, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    iget-object v13, v6, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    nop

    iget-object v14, v7, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    iget-object v12, v8, Llkx;->b:Lcom/google/googlex/gcam/AssetData;

    nop

    nop

    nop

    if-eqz v15, :cond_5

    nop

    iget-object v10, v1, Llkm;->e:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    move-object/from16 v16, v12

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v10, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    move-object/from16 v17, v13

    nop

    move-object/from16 v18, v14

    nop

    iget-wide v13, v15, Lcom/google/googlex/gcam/AssetData;->a:J

    nop

    nop

    nop

    nop

    nop
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_89
    move-object/from16 v4, v17

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8a
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :catchall_15
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    add-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8c
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v23, v6

    nop

    nop

    :goto_8e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const v1, 0x1f

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

    :goto_90
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_91
    throw v1

    nop

    nop

    nop

    nop
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    :catchall_16
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
