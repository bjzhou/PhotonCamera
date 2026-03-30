.class public final Liwd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lcom/google/geo/lightfield/processing/ProgressCallback;

.field final synthetic c:Liwe;


# direct methods
.method public constructor <init>(Liwe;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/geo/lightfield/processing/ProgressCallback;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p3, p0, Liwd;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

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
    iput-object p2, p0, Liwd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Liwd;->c:Liwe;

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
.end method


# virtual methods
.method public final run()V
    .locals 25

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeRelease()V

    goto/32 :goto_f3

    nop

    nop

    :goto_1
    invoke-interface {v2, v4, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b9

    nop

    nop

    :goto_2
    move-object/from16 v11, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v6, Liwo;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v6}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v6, Liwe;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_9
    if-eqz v4, :cond_0

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_0
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_a
    const-string v0, "mime"

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_f
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_10
    iget-boolean v12, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_11
    const-string v2, "Could not configure MediaCodec"

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

    :goto_12
    aget v9, v9, v11

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    invoke-virtual {v15}, Lits;->b()Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide v11, v8, Liwo;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_16
    invoke-static {v7, v11, v0, v6}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v7, v8, Liwo;->d:Landroid/media/MediaFormat;

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

    :goto_18
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v13, "width"

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v11, 0x7cd

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

    :goto_1d
    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_1e
    invoke-interface {v3, v6}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v6, v0

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_20
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_22
    invoke-interface/range {v18 .. v24}, Livo;->a(Ljava/lang/String;ZDD)Livn;

    move-result-object v2

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_23
    iput-boolean v10, v8, Liwo;->f:Z

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->delete()V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v11, v7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3a

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v7, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v17, v12

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    const/16 v11, 0x7ce

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_30
    move-object/from16 v19, v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_31
    new-instance v14, Lrcy;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_33
    const/high16 v6, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, v8, Liwo;->c:Landroid/media/MediaExtractor;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, v7, Liwe;->g:Lits;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v4, v12, v6, v7, v10}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeApplyTexture(IIII)V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_37
    const/16 v2, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_3b
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v19, v7

    nop

    :goto_3d
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v8, Liwo;->c:Landroid/media/MediaExtractor;

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

    :goto_3f
    cmpg-float v11, v16, v10

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_40
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, v7, Liwe;->b:Livo;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x3e4ccccd    # 0.2f

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_44
    move-object/from16 v17, v12

    nop

    nop

    nop

    :goto_45
    :try_start_0
    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    nop

    nop

    iput-object v4, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    iget-object v11, v8, Liwo;->b:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4, v11, v6, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v0, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_7c

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_48
    iput-boolean v6, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_64

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4c
    sget-object v0, Liwe;->a:Lsdb;

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

    :goto_4d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v17, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_50
    const/4 v7, 0x1

    nop

    :goto_51
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3, v10}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v4, 0x7cf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_54
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_56
    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_57
    invoke-direct {v12}, Landroid/media/MediaExtractor;-><init>()V

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_58
    const-string v4, "Could not start MediaCodec"

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v14, Lrcy;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5c
    iput v6, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_26

    nop

    :goto_5e
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_5f
    const/16 v11, 0x7ab

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_60
    invoke-direct {v14, v8, v9}, Lrcy;-><init>(II)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v2}, Lits;->a()Ljava/lang/String;

    move-result-object v19

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_62
    iget-wide v10, v7, Liwe;->f:D

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v7, 0x1

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_25

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_27

    nop

    nop

    :goto_67
    check-cast v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v6, v14, Lrcy;->c:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    :goto_6a
    invoke-interface {v3, v0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-ltz v11, :cond_3

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v8}, Liwo;->c()Z

    move-result v11

    nop

    nop
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/16 v2, 0x7ae

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_65

    nop

    nop

    :goto_6e
    iget-object v7, v1, Liwd;->c:Liwe;

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v12, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_4
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_70
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_ba

    nop

    :catch_3
    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v4, v15}, Liwo;->b(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v4

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v0, v8, Liwo;->g:[Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_77
    iget-object v10, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_78
    invoke-virtual {v8}, Liwo;->a()F

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v7, v12, v6, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_7c
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v5, Lrqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_bd

    nop

    :goto_7f
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v8, v14, Lrcy;->c:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_81
    iget-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_82
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_f0

    nop

    :cond_5
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_85
    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_86
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v6, :cond_6

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-nez v0, :cond_7

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_7
    :try_start_4
    iget-object v0, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const-wide/16 v6, 0x2710

    nop

    nop

    :try_start_5
    invoke-virtual {v11, v6, v7, v12}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_8a
    iget-boolean v0, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_8b
    invoke-static {v2, v11, v4, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_40

    nop

    nop

    :goto_8c
    iget-object v2, v7, Liwe;->g:Lits;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v7, "Exception when stopping the decoder"

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v5}, Lrqs;->b()V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_91
    invoke-direct {v9, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_da

    nop

    nop

    :goto_92
    iput-boolean v2, v8, Liwo;->f:Z

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

    :goto_93
    move-object/from16 v19, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move/from16 v20, v4

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_8
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v0, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_97
    mul-float v16, v16, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v6, v14, Lrcy;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/16 v11, 0x7cc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-wide/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_9b
    iput-boolean v2, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_ba

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_9e
    if-eqz v11, :cond_9

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v2, "Could not extract MediaFormat from %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const/4 v11, 0x1

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    aput v8, v9, v11

    nop

    nop

    :goto_a3
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_a4
    invoke-static {v12, v8}, Liwo;->b(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_a5
    sget-object v0, Liwe;->a:Lsdb;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_a9
    new-instance v12, Landroid/media/MediaExtractor;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-interface {v0, v3, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_26

    nop

    nop

    :goto_ac
    :try_start_6
    iget-object v11, v14, Lrcy;->d:Ljava/util/concurrent/Semaphore;

    nop

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {v0, v2, v15}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v3, v4}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    goto/32 :goto_7d

    nop

    nop

    :goto_af
    iget v6, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast v2, Lscz;

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

    :goto_b1
    goto/16 :goto_102

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_b2
    iget-wide v11, v7, Liwe;->e:D

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_b3
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    aput v10, v9, v10

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v7, 0x1

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

    nop

    :goto_b6
    if-nez v11, :cond_a

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
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_b7
    new-array v9, v9, [I

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

    :goto_b8
    aget v8, v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b9
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_bb
    const-string v2, "Failed to initialize omnistereo renderer"

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_bc
    move-object/from16 v19, v7

    nop

    nop

    :goto_bd
    goto/32 :goto_8d

    nop

    nop

    :goto_be
    add-float v6, v16, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_bf
    move-wide/from16 v23, v10

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

    :goto_c0
    const-string v4, "Could not create MediaCodec of type %s"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c1
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_3d

    nop

    nop

    :catch_5
    move-exception v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    sget-object v0, Liwo;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_c4
    iget-object v0, v14, Lrcy;->c:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto :goto_ba

    nop

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez v8, :cond_b

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    :goto_c7
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_c8
    const-string v15, "durationUs"

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_c9
    sget-object v2, Liwo;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v5}, Lrqs;->a()V

    :goto_cb
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_ce
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, v8, Liwo;->h:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_d0
    iget-object v15, v7, Liwe;->g:Lits;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {v2, v11, v4, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d2
    iput-object v4, v8, Liwo;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v2, v0}, Livn;->getResult(Z)Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    move-result-object v0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const/16 v12, 0x7ca

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_d5
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_d6
    sget-object v0, Liwe;->a:Lsdb;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v17, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    goto/16 :goto_ba

    nop

    :catch_7
    move-exception v0

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    sget-object v4, Liwo;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_da
    new-instance v8, Liwo;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_db
    move-object/from16 v6, v19

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-direct {v5, v6}, Lrqs;-><init>([B)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    new-instance v9, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    aput v14, v9, v10

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    sget-object v4, Liwo;->a:Lsdb;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_e2
    invoke-virtual {v8}, Lits;->b()Ljava/lang/String;

    move-result-object v8

    nop

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

    :goto_e3
    invoke-virtual {v9}, Landroid/view/Surface;->release()V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    const-string v3, "Failed to open video file %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_e5
    sget-object v2, Liwo;->a:Lsdb;

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-boolean v0, v8, Liwo;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_e7
    move-object/from16 v19, v7

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->release()V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_73

    nop

    nop

    :goto_ea
    const-string v7, "Could not decodeNextFrame"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_eb
    iget-object v3, v1, Liwd;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    move-object/from16 v7, v19

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_ef
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    const/4 v2, 0x0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_f4
    iget v12, v4, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f5
    iget-object v0, v1, Liwd;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    aput v10, v9, v11

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_f7
    const-string v12, "height"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f8
    iget-boolean v4, v7, Liwe;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_f9
    const/4 v2, 0x1

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_fa
    const/16 v2, 0x7ad

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_fb
    sget-object v6, Lrcy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-static {v4, v11, v2, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v8, v7, Liwe;->g:Lits;

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

    :goto_ff
    invoke-direct {v8, v9}, Liwo;-><init>(Landroid/view/Surface;)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_100
    add-int/2addr v6, v7

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_101
    goto/16 :goto_cb

    nop

    :goto_102
    goto/32 :goto_41

    nop

    nop

    :goto_103
    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_104
    invoke-virtual {v2}, Lits;->b()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop
.end method
