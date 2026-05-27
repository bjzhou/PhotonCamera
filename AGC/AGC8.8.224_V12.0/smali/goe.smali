.class public final synthetic Lgoe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgom;

.field public final synthetic b:Lnph;

.field public final synthetic c:Z

.field public final synthetic d:Lnph;

.field public final synthetic e:Lcom/google/googlex/gcam/PortraitRequest;

.field public final synthetic f:Lcom/google/googlex/gcam/RawReadView;

.field public final synthetic g:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic h:Lcom/google/googlex/gcam/RawReadView;

.field public final synthetic i:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic j:Lcom/google/googlex/gcam/InterleavedImageU16;

.field public final synthetic k:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final synthetic l:J

.field public final synthetic m:Lehb;


# direct methods
.method public synthetic constructor <init>(Lgom;Lnph;Lehb;ZLnph;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU16;Lcom/google/googlex/gcam/InterleavedImageU8;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgoe;->a:Lgom;

    iput-object p2, p0, Lgoe;->b:Lnph;

    iput-object p3, p0, Lgoe;->m:Lehb;

    iput-boolean p4, p0, Lgoe;->c:Z

    iput-object p5, p0, Lgoe;->d:Lnph;

    iput-object p6, p0, Lgoe;->e:Lcom/google/googlex/gcam/PortraitRequest;

    iput-object p7, p0, Lgoe;->f:Lcom/google/googlex/gcam/RawReadView;

    iput-object p8, p0, Lgoe;->g:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p9, p0, Lgoe;->h:Lcom/google/googlex/gcam/RawReadView;

    iput-object p10, p0, Lgoe;->i:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p11, p0, Lgoe;->j:Lcom/google/googlex/gcam/InterleavedImageU16;

    iput-object p12, p0, Lgoe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-wide p13, p0, Lgoe;->l:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Lgoe;->a:Lgom;

    iget-object v2, v1, Lgoe;->b:Lnph;

    iget-object v3, v1, Lgoe;->m:Lehb;

    iget-boolean v4, v1, Lgoe;->c:Z

    iget-object v5, v1, Lgoe;->d:Lnph;

    iget-object v6, v1, Lgoe;->e:Lcom/google/googlex/gcam/PortraitRequest;

    iget-object v7, v1, Lgoe;->f:Lcom/google/googlex/gcam/RawReadView;

    iget-object v8, v1, Lgoe;->g:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v9, v1, Lgoe;->h:Lcom/google/googlex/gcam/RawReadView;

    iget-object v10, v1, Lgoe;->i:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v11, v1, Lgoe;->j:Lcom/google/googlex/gcam/InterleavedImageU16;

    iget-object v12, v1, Lgoe;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-wide v14, v1, Lgoe;->l:J

    iget-object v13, v0, Lgom;->l:Lgop;

    iget-object v13, v13, Lgop;->h:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v1, v0, Lgom;->l:Lgop;

    iget-boolean v1, v1, Lgop;->k:Z

    if-nez v1, :cond_0

    new-instance v0, Lkdf;

    const-string v1, "Controller hasn\'t been initialized"

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    monitor-exit v13

    return-void

    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v1, v0, Lgom;->l:Lgop;

    iget-object v1, v1, Lgop;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v13, Lgog;

    invoke-direct {v13, v3}, Lgog;-><init>(Lehb;)V

    move-wide/from16 v16, v14

    new-instance v14, Lgoh;

    invoke-direct {v14, v3}, Lgoh;-><init>(Lehb;)V

    new-instance v15, Lgoi;

    invoke-direct {v15, v2, v3}, Lgoi;-><init>(Lnph;Lehb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v29, v2

    :try_start_3
    new-instance v2, Lgoj;

    invoke-direct {v2, v4, v5, v3}, Lgoj;-><init>(ZLnph;Lehb;)V

    move-object/from16 v18, v12

    new-instance v12, Lgok;

    invoke-direct {v12, v0, v3, v4, v5}, Lgok;-><init>(Lgom;Lehb;ZLnph;)V

    new-instance v4, Lnrm;

    invoke-direct {v4}, Lnrm;-><init>()V

    iput-object v4, v0, Lgom;->a:Lnrm;

    new-instance v4, Lcom/google/googlex/gcam/PortraitOutputs;

    invoke-direct {v4}, Lcom/google/googlex/gcam/PortraitOutputs;-><init>()V

    iget-object v5, v0, Lgom;->l:Lgop;

    iget-object v5, v5, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v5, v10, v11, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setProgressCallback(JLcom/google/googlex/gcam/base/function/LongFloatConsumer;)V

    iget-object v5, v0, Lgom;->l:Lgop;

    iget-object v5, v5, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v0, v2}, Lgom;->c(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;

    move-result-object v13

    invoke-virtual {v5, v10, v11, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setUpsampledInputImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lgom;->l:Lgop;

    iget-object v5, v5, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-static {v2}, Lgom;->d(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;

    move-result-object v2

    invoke-virtual {v5, v10, v11, v2}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setUpsampledInputHardwareBufferCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;)V

    :cond_1
    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v0, v12}, Lgom;->c(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;

    move-result-object v5

    invoke-virtual {v2, v10, v11, v5}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-static {v12}, Lgom;->d(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;

    move-result-object v5

    invoke-virtual {v2, v10, v11, v5}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setHardwareBufferCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;)V

    :cond_2
    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v2, v10, v11, v14}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setLogCallback(JLcom/google/googlex/gcam/base/function/LongStringConsumer;)V

    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v2, v10, v11, v15}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setCompleteCallback(JLcom/google/googlex/gcam/base/function/LongConsumer;)V

    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v10, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    iget-object v5, v0, Lgom;->a:Lnrm;

    invoke-virtual {v2, v10, v11, v5}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->f:Ldhi;

    sget-object v5, Ldib;->m:Ldhj;

    invoke-interface {v2, v5}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Lgol;

    invoke-direct {v2, v3, v5}, Lgol;-><init>(Lehb;I)V

    iget-object v10, v0, Lgom;->l:Lgop;

    iget-object v10, v10, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v0, v2}, Lgom;->c(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setSecondaryImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lgom;->l:Lgop;

    iget-object v10, v10, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-static {v2}, Lgom;->d(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v2}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setSecondaryHardwareBufferCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;)V

    :cond_3
    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->f:Ldhi;

    sget-object v10, Ldib;->k:Ldhj;

    invoke-interface {v2, v10}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    new-instance v2, Lgol;

    invoke-direct {v2, v3, v10}, Lgol;-><init>(Lehb;I)V

    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    iget-object v13, v0, Lgom;->a:Lnrm;

    invoke-virtual {v3, v11, v12, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setDebugRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-virtual {v0, v2}, Lgom;->c(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;

    move-result-object v13

    invoke-virtual {v3, v11, v12, v13}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setDebugImageCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;)V

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-static {v2}, Lgom;->d(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;

    move-result-object v2

    invoke-virtual {v3, v11, v12, v2}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;->setDebugHardwareBufferCallback(JLcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;)V

    :cond_4
    new-instance v2, Lcom/google/googlex/gcam/StringRawReadViewMap;

    invoke-direct {v2}, Lcom/google/googlex/gcam/StringRawReadViewMap;-><init>()V

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/google/googlex/gcam/RawReadView;->b()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v8, :cond_5

    sget-object v3, Lgop;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/google/googlex/gcam/StringRawReadViewMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/RawReadView;)V

    sget-object v3, Lgop;->b:Ljava/lang/String;

    invoke-static {v3, v6, v8}, Legz;->a(Ljava/lang/String;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_5
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/google/googlex/gcam/RawReadView;->b()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v19, :cond_7

    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->f:Ldhi;

    sget-object v7, Ldho;->ag:Ldhj;

    invoke-interface {v3, v7}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lgop;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v3, Lgop;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v9}, Lcom/google/googlex/gcam/StringRawReadViewMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/RawReadView;)V

    move-object/from16 v7, v19

    invoke-static {v3, v6, v7}, Legz;->a(Ljava/lang/String;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_7
    new-instance v3, Lnra;

    new-instance v7, Lcom/google/googlex/gcam/InterleavedReadViewU16;

    move-object/from16 v8, v20

    iget-wide v11, v8, Lcom/google/googlex/gcam/InterleavedImageU16;->a:J

    invoke-static {v11, v12, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU16_read_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/google/googlex/gcam/InterleavedReadViewU16;-><init>(J)V

    iget-wide v8, v7, Lcom/google/googlex/gcam/InterleavedReadViewU16;->a:J

    iget-wide v11, v2, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J

    move-wide/from16 v21, v8

    move-object/from16 v23, v7

    move-wide/from16 v24, v11

    move-object/from16 v26, v2

    invoke-static/range {v21 .. v26}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PortraitDepthArguments(JLcom/google/googlex/gcam/InterleavedReadViewU16;JLcom/google/googlex/gcam/StringRawReadViewMap;)J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lnra;-><init>(J)V

    iget-object v2, v0, Lgom;->l:Lgop;

    iget-object v2, v2, Lgop;->f:Ldhi;

    sget-object v7, Ldib;->D:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-virtual/range {v18 .. v18}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/googlex/gcam/PortraitRequest;->d()Z

    move-result v9

    invoke-direct {v2, v7, v8, v9}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(IIZ)V

    iput-object v2, v0, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    iget-object v2, v0, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    iget-wide v7, v2, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->a:J

    iget-wide v11, v4, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    invoke-static {v11, v12, v4, v7, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitOutputs_dynamic_depth_result_ptr_set(JLcom/google/googlex/gcam/PortraitOutputs;J)V

    :cond_8
    new-instance v2, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;

    iget-object v7, v0, Lgom;->l:Lgop;

    iget-object v7, v7, Lgop;->l:Lgpc;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lgpc;->a()J

    move-result-wide v11

    move-wide/from16 v20, v11

    goto :goto_1

    :cond_9
    move-wide/from16 v20, v8

    :goto_1
    iget-object v7, v0, Lgom;->l:Lgop;

    iget-object v7, v7, Lgop;->m:Lgpb;

    if-eqz v7, :cond_a

    invoke-interface {v7}, Lgpb;->a()J

    move-result-wide v11

    move-wide/from16 v22, v11

    goto :goto_2

    :cond_a
    move-wide/from16 v22, v8

    :goto_2
    iget-object v7, v0, Lgom;->l:Lgop;

    iget-object v7, v7, Lgop;->f:Ldhi;

    sget-object v11, Ldib;->L:Ldhj;

    invoke-interface {v7, v11}, Ldhi;->l(Ldhj;)Z

    move-result v24

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v24}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;-><init>(JJZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v7, Lkte;

    move-object/from16 v11, v18

    invoke-direct {v7, v4, v11, v3, v6}, Lkte;-><init>(Lcom/google/googlex/gcam/PortraitOutputs;Lcom/google/googlex/gcam/InterleavedImageU8;Lnra;Lcom/google/googlex/gcam/PortraitRequest;)V

    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->i:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lkte;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/googlex/gcam/PortraitOutputs;

    iget-wide v11, v3, Lcom/google/googlex/gcam/PortraitOutputs;->a:J

    iget-object v3, v7, Lkte;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {v3}, Lcom/google/googlex/gcam/InterleavedImageU8;->d(Lcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v20

    iget-object v3, v7, Lkte;->a:Ljava/lang/Object;

    check-cast v3, Lnra;

    iget-wide v14, v3, Lnra;->a:J

    iget-object v3, v7, Lkte;->c:Ljava/lang/Object;

    if-nez v3, :cond_b

    move-wide/from16 v26, v8

    goto :goto_3

    :cond_b
    check-cast v3, Lcom/google/googlex/gcam/PortraitRequest;

    iget-wide v6, v3, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    move-wide/from16 v26, v6

    :goto_3
    iget-object v3, v0, Lgom;->l:Lgop;

    iget-object v3, v3, Lgop;->f:Ldhi;

    sget-object v6, Ldib;->J:Ldhj;

    invoke-interface {v3, v6}, Ldhi;->l(Ldhj;)Z

    move-result v28

    iget-wide v6, v2, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    const-wide/16 v24, 0x0

    move-object v13, v2

    move-wide/from16 v22, v14

    move-wide/from16 v8, v16

    move-wide v14, v6

    move-wide/from16 v18, v11

    invoke-virtual/range {v13 .. v28}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->processImpl(JJJJJJJZ)Z

    iget-object v0, v0, Lgom;->l:Lgop;

    iget-object v0, v0, Lgop;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->close()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_7
    const-class v0, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v10

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_4
    :try_start_8
    throw v3

    :catchall_2
    move-exception v0

    move-object/from16 v29, v2

    :goto_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v29, v2

    :goto_6
    sget-object v1, Lgop;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Error processing the input image:"

    const/16 v3, 0xc3d

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
